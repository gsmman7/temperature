## summary

1. What your project does
2. How to install it
3. Example usage
4. License and author info


# 1.what does it do

with this code, you can convert a temperature value from Celsius to fahrenheit & kelvin.
You can also choose in which format these temperatures are shown. the formats are simple text,json and html.

## 2.How to install

To use this app, you need to have ruby installed on your computer.

You can install ruby from the following website: (https://www.ruby-lang.org/en/downloads/)

after ruby has been succesfully installed you can install this app by opening powershell in the folder where you want to place the app and typing `gem install temperature_nvdb`.

When the apllication is succesfully installed you can use this this apllication.


## 3.Usage + Example

### all usable commands

|options        |                                               description                                  | example code  |
| ------------- |:------------------------------------------------------------------------------------------:| -------------:|
| -t            |                            convert value given in the command line                         |temp-conv -t 20|
| -f            | convert value from a file (note:the file is hardcoded in the app and the filename is temp.txt) | temp-conv -f   |
| -u            |                                      convert value from a url                              |   temp-conv -u  |
|-c             |                          Displays converted values in plain text                           | temp-conv -t 20 -c|
|-j             |                      Displays converted values in json string format                       |temp-conv -t 20 -j|
|-h             |                          Displays converted values in html format                          |temp-conv -f -h|


### example + output

In this example, a given value will be converted in the 3 possible formats

```
temp-conv -t 20 -cjh

```

the output will be the following:

```
It's currently 20.0°C, 68.0 degrees kelvin & 293.0 degrees fahrenheit

{celsius: 20.0,fahrenheit: 68.0, kelvin: 293.0}

<div>
    <div>20.0°C</div>
    <div>68.0°F</div>
    <div>293.0°K</div>
</div>

```
## License and auther info

License : MIT

auther : I am the mysterious person behind the keyboard that programmed this wonderfull app.
If you wish to contact me, you can do this at the e-mail adress pleasedont@datboi.com.
