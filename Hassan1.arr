#A
include gdrive-sheets
include data-source
include shared-gdrive(
"dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")


ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"

# hent data fra spreadsheet
kWh-consumer-data =
  load-table: komponent, energi
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
         sanitize energi using string-sanitizer
  end



distance-travelled-per-day = 47.2  
distance-per-unit-of-fuel= (distance-travelled-per-day / 10) * 0.5 
energy-per-unit-of-fuel = 10 #hentet fra link i oppgaveteksten

energy-per-day = ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                        energy-per-unit-of-fuel
#B
#funksjon min som omgjør string til tall.
fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => energy-per-day 
  end
where:
  energi-to-number("48") is 48
  energi-to-number("") is energy-per-day 
end
#C
kWh-consumer-data-fixed = transform-column(kWh-consumer-data, "energi", energi-to-number) 
#D
sum(kWh-consumer-data-fixed, "energi")
#E
bar-chart(kWh-consumer-data-fixed, "komponent", "energi")