*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
window.output["strings"] = window.output["strings"].concat(["*","*TestFramework","*/app/TestFramework","*.","*/app/TestFramework/TestFramework","*Frooti","*/app/TestFramework/TestFramework/frooti.robot","*TestFramework/frooti.robot","*Test Case 1 - Verify File Exists","*<p>Verify if a file exists in the current directory\x3c/p>","*Create File","*OperatingSystem","*<p>Creates a file with the given content and encoding.\x3c/p>","*testfile1.txt","*Created file '<a href=\"file:///app/TestFramework/testfile1.txt\">/app/TestFramework/testfile1.txt\x3c/a>'.","*File Should Exist","*<p>Fails unless the given <code>path\x3c/code> points to an existing file.\x3c/p>","*File '<a href=\"file:///app/TestFramework/testfile1.txt\">/app/TestFramework/testfile1.txt\x3c/a>' exists.","*Test Case 2 - Check Directory Creation","*<p>Verify if a directory can be created successfully\x3c/p>","*Create Directory","*<p>Creates the specified directory.\x3c/p>","*TestDirectory","*Created directory '<a href=\"file:///app/TestFramework/TestDirectory\">/app/TestFramework/TestDirectory\x3c/a>'.","*Directory Should Exist","*<p>Fails unless the given path points to an existing directory.\x3c/p>","*Directory '<a href=\"file:///app/TestFramework/TestDirectory\">/app/TestFramework/TestDirectory\x3c/a>' exists.","*Test Case 3 - Validate String Equality","*<p>Verify if two strings are equal\x3c/p>","*Should Be Equal","*BuiltIn","*<p>Fails if the given objects are unequal.\x3c/p>","*Hello    Hello","*Test Case 4 - Validate List Length","*<p>Verify if a list has the expected number of elements\x3c/p>","*Create List","*<p>Returns a list containing given items.\x3c/p>","*One    Two    Three","*${list}","*${list} = ['One', 'Two', 'Three']","*Length Should Be","*<p>Verifies that the length of the given item is correct.\x3c/p>","*${list}    3","*Length is 3.","*Test Case 5 - Check Number Equality","*<p>Verify if two numbers are equal\x3c/p>","*Should Be Equal As Numbers","*<p>Fails if objects are unequal after converting them to real numbers.\x3c/p>","*10    10","*Test Case 6 - Verify File Removal","*<p>Verify if a file can be removed successfully\x3c/p>","*testfile2.txt","*Created file '<a href=\"file:///app/TestFramework/testfile2.txt\">/app/TestFramework/testfile2.txt\x3c/a>'.","*Remove File","*<p>Removes a file with the given path.\x3c/p>","*Removed file '<a href=\"file:///app/TestFramework/testfile2.txt\">/app/TestFramework/testfile2.txt\x3c/a>'.","*File Should Not Exist","*<p>Fails if the given path points to an existing file.\x3c/p>","*File '<a href=\"file:///app/TestFramework/testfile2.txt\">/app/TestFramework/testfile2.txt\x3c/a>' does not exist.","*Test Case 7 - Check Dictionary Key","*<p>Verify if a dictionary contains a specific key\x3c/p>","*Create Dictionary","*<p>Creates and returns a dictionary based on the given <code>items\x3c/code>.\x3c/p>","*key1=value1    key2=value2","*${dict}","*${dict} = {'key1': 'value1', 'key2': 'value2'}","*Dictionary Should Contain Key","*Collections","*<p>Fails if <code>key\x3c/code> is not found from <code>dictionary\x3c/code>.\x3c/p>","*${dict}    key1","*Test Case 8 - Validate Substring","*<p>Verify if a string contains a specific substring\x3c/p>","*Should Contain","*<p>Fails if <code>container\x3c/code> does not contain <code>item\x3c/code> one or more times.\x3c/p>","*Hello, World!    Hello","*Test Case 9 - Check List Contains Item","*<p>Verify if a list contains a specific item\x3c/p>","*Item1    Item2    Item3","*${list} = ['Item1', 'Item2', 'Item3']","*List Should Contain Value","*<p>Fails if the <code>value\x3c/code> is not found from <code>list\x3c/code>.\x3c/p>","*${list}    Item2","*Log (6)","*/app/TestFramework/TestFramework/log (6).robot","*TestFramework/log%20%286%29.robot","*<p>A test suite with a single test for New Tab Created by hats' Robotcorder\x3c/p>","*Test name cannot be empty.","eNqFkt2PmkAUxf8Vn5qm2zjAWpQ0+4AzooB8CIpi0we+1OEbZgaEv75tdl9sdrNPN+ec30lubm6Py7jqpxWjNaO/vjSsoj8JbXF5Ja/i9+Rl0n8KTaOqjAL69S389jq+vymFtbhi5NEEQV2Dd5Ppx+D7BcSKYvi8BOJ/3LStwoq+u+DHwLa64vLvHeht4gU5jiewTeKkpDjI/9vFSa5tQgiuykffLaosebASs6ZZxtv9KBs3BiTl7BfI9ZeiVJMgIprh/1Dd1YixOa5ADMUlPJzTjWQ3Vz7gvPuAlyBseTBPo4YGe6DZGre6hLdj0+vJ4DWk8WEq4E6qfWhwQSDfF2Elc2slPERuKYctt71C0dyJYLbOORbIp0ssKb0SAa5LOBZb4mL2BK1L2B3TtLI1frduBpG0vBPcQ0kt5jeGUGApXom6mVCfOmRto04yYCKue1tpxq3C+HZ7ZNa8ke4K2bol1fnjXt5oXuOdOOTlgCsXF6qHeyGxl8tIFsTnpyygUDaEKsyeXU2M3VQYG3hV61ZZaeBYIlvHcJ0qVhCz+ZNhBSC+7J0QOKt87E+XvZpnKoKOrRFXPKDMO4/ZYaaaN82BGBb3zc0yPN7ExqD7yHiGDtdIHspyclOcuhoKB81mSmHqWwv5g+n6B5KhwZKbNlQHvDNVo2nxfsfouVt6bptDBCEiZ7coRr0vTU9M1zuibaLRqg3Od1e0C6OFI+h4gcGw+CEAtvB3A7tu+qFPV7uXl8cf+QPYADsP","*No keyword with name '    Open Browser\",\"*SeleniumLibrary\",\"*&lt;p&gt;Opens a new browser instance to the optional &lt;code&gt;url\\x3c/code&gt;.\\x3c/p&gt;\",\"*${URL}' found.","*    Open Browser&quot;,&quot;*SeleniumLibrary&quot;,&quot;*&lt;p&gt;Opens a new browser instance to the optional &lt;code&gt;url\\x3c/code&gt;.\\x3c/p&gt;&quot;,&quot;*${URL}","eNqtWgmvo0iS/itWqzW1M2w1p69ulXYxBoONOcxlrFm1MGBzgyEBQ6v/+ybYr+q9V1XdO9tTKulBZpAZGecXkf7xt9VBtjT28PsE/ssLEOZZ9enH355Pv//wnz/8Qy78LMyuk3OZt5VfTj4wQZmn/ocJyCdnp/IndZlMPvwtAb84k6D0L5/++UMAQFH9jKL+3UmLxP/JzdN//vC3K/jlWxN30kWdYfLDT8N2Ff7x8R/gH2McjvhSYUZ9JbcRra4ctNNiOudJamV43MHImNWWmwtaPpPway0Q831OFzxD+v1+MY8jsCXZrOjba6sTbOXTmpnWVbg9mwuAg7BO3Z1u7KKkbeWkVW5ba6q4cW0vwfwib9R+3i35HnAMe9uEDYsmdilN5+1JJq5mg22DuYwuxB222Dk3ANLQYknSkRchJ2notJYL+864wkZLslzo59pxZ6LY6kTKMSPZillW/BbbY8S1aGTqtLqiR7JB1vsC3c5owsZtyf00CINxsiwHE9cpQF36k8otfT+rAjh09l2nhsLP8s+KCSuoQT8bpShkRQ0mun8Hw9ugnGIQsd4VfjUBgT+5ho2fTYYJN/f8YQ5A4lEZLwOTMIMqHoiHqckl9BNvEnp+BkL47E3O3Zvvk9x1QF6+WeKn8W3ceuAj9H6GPJeZk/qDvf34mwFNT6L37O/P2cKpqjYvvcesQmuaJR/W4yyThG48WdUA5NmbM40Tj0Odx9m/zGOSX8NxD8sJwcSAayUTNvFTuOpEqCZmWIXnxH/DxEBZTeqRdODEf5L/2eaD0prHel/z4TlVcM6dhzhAmPp5DT7h2DCrOFd/ogV5DVXC5BlwwuyFxTd8mX45CGIQjwP+Ja4ueZ15EyjN4ThuXZbDhwXc9pvygpw9lJRDm1w9DPKdluBM9Waxp92+W08chD9pQxBMhKxxkhAesPRHjTpJ9YgHAEuA2Pa0sULX5CXP19dZei2LC2ZnmLY0WZXjOwNDdKwtCzaO+wz0XrJpMaJEsGaKbhXlFkyxak/OfHdddIv5jsvWzD1d857VJnhdXEJNxePyuJCCEmhS7h6C7ZUzr+KmONN3bDPrp1dhevQpPULI2KYTdCErS56s8V3k+2sLHIFJxGI5y1fqSda4zM5tvze8i7zYNqUenvMiWuH+3DsRKx6tlbDeY7tNTxxSxFEtalacb4dzPEdXraTJmjHHbmvSuM66unUivdlf8ClmbErlUp+WV3+uZ/NjjrVry8kqHZiXQxpbCDjEUxwIeaDUGrBZ4zCd3g+rujmQBWod+QuhJHlymm7EW80l1UEvxFWedmle7ONF7B5vJLdpLZwX5aQTyZXWnAvtujDsSBVvBrnCEM4Syh3bbSOwOpAuIWx76sqxjcTovrRP6I0Go+1ZomcqzuxrIK3NXkwJnHEE2hXTXdg2abVOtmKi7ALbASjja6dZhzF3HaTWPo/7DjBCFSHoAkMdx2APqIbuo1r99OltkiAeSeJ9aAkfplM/zfBdaGnLPLu+DHzHnf7AjV57w8R9kFd/HEvfGfmLZX9mOS8nr/mhPW8iAD8dcizjlKNvsR9htkz90vWfThDHuHhf02pQo0tOVZjbbVWn5DQuNe8QUbsrxbFpd1HXNRXHlkmijZbOiXTbn0/zPbKY6U2xowCKZYTtLwsavWxwci30KS9CJ8AQ1Lls4qtDEYByZv0pblR7jah0itL+WUNWoCSV7E7nNulR0Wpx7Az6hC5qcqlkYb9Z11MDua+x02zGbl2MPrlNaUSY7Cr3RdNkKssvzwIm71R2Y5PCIYuF46KFCTqsJGpa353lsbxsAC15fLWcr5Y5q5Ve3PozbJ6Zc9qlXOSOWryWYOfSlQKEni9F9Oz5AW1lqndzmn4qpdFFca2td9xqalk0cWkWVSdU1LazaBKZllF6awyyMzLi0Eb77Q6xVttKCO2iSWIVEchoVxYeuzAuAtgeNDFPOj3QFtZBNBNpK3BezenUIdR3cVKd4oNvztW4DP1INqqi24ZnxsZLUuSERRAndmFUa42ppNQQGJKQttJRq6r93t7u7VtsJPZ1oSdnOTaww62vi8K4tQI4Jd6+Pt1WIVfn+mKxRVDEpbRbrfKUQ12b63tHIJ+O8MiT38oFj5nX2ekvJUq3qn7+yfG8jyD/6D5tdBwbXj6G0HoraLH1g4mX9DkgkhdHW/n/jlT12f8gpnTBF7jy+kP/Xvgu8L0/Pc571odg8ZBq4EPZ0YowOfhVAaGxDxNkOTFHL147wBm9VhGGP1I+if1ujDVjGhsd/ANMYg6AQcavKgitPzzy64jV3s4MI/tu2GnEQPDhV+MgjhBo4wO4/a32K/CGCvUzr8ghWvsvOFd2n8bYMlD8+Fv55Hb8XgMOqKu34iewEU98HftWdZgA4W0Y5JwwqSbh5Y1wnwrw3+nFy6EqR/D6hCevvxlE/JY8z8YgmOYQ5g5Qp3qnni9H+Smq8uw//j5WLP/8oapdFwrunz/8gZZeou2Lnr4ruGfWGGgojPqjbf2yhIY4bjrabTdZl3nh5W024erMHaonuBLoBgJDeEEtMd6QDKxiamZ+WZhC7G1Zp1TsU0XU7uzm8AwwnZvq3lp+w1P5UUjXen9eKHg6vZm8zK0Qx7tavrYmpgsB9SijUZ1DChyEzXwbWwB+T4gVxCwxr1jgsopc5URjMkvF9unaqh6Wq8Ys0tg6X+sWf2Qcsl7srtsGXUeoSkxlPEaRWg17spvn9PHc8oAxmybXp2ywrKeUpNCLTVl1t1TmfMEj/fv+FvSoG98yQWGmdeQd8mmK4c1ZR3VQRcvZfm3fsOl+7fWHVFLw40JxNHTZ16W0nlMdV6vBtb3wNpnTlwSjkXhOzESy5U2NZPIbQ9QbcaW397z2bpaabW5UVonLwiVLBbRHE7EyFtZ9B3Fv4doWK12zFv2C3XNngFMiyt6xqPAOzplTVoeza+najpCBL2q8KGh1jROMyeCn3rLL5b7c2vjC7dn4xlvH010IClWkjuBUqV3BBjs+yWrHDzd7rVL3lAoKn9n3ES7VxlyM6nMgLWKcuh+l0xTEuzDibTMsGPcyzy4L8crwxzutLSpead8F7NkzYGsw1MHAxcGieiKGFZisuiGu1G+j44OqeqnRJ5eBvBoH4fskGT7801j5Lsg3wy7VnxRD3otdf24Q4O9mPj7Y8EdoJY8kE3yiPQcHYi5M/IlRJLnjwQwwRq9vovjAU/HOPFVLIzMOC051OV42cFlcXpM4VWfNHCvS+dluRAfN9hXqOxCmZtZlupoTYTRlThi2jRB1KSU605ftGSEsOhPlOhAbi9DwVWTiyiYXOH7JQGgUXYLLdbUjFI9rGgTp8zWE8CSypZDjrAeog+0qj9A9lb9ZtI9tLVRukzUbUE1AsUBcyJsqTPauXOmO57f7GWBQ0N541drcF8T04FnngyU1mMcfFyQZt1JY6jEtk/uZ3feaSfnTHq3k2RVTGk9qZiy2ESnSmXLrxS04Y8nlSOgK7ZlzdxfmPTvtOshmBuQU2jwjb3uC8h1qmsb6udzpU1gFdBSh3c2uNdQwnR7zGmECKjsr0lEIDtD0jTRvTJMOTj1m3FljB+PeRtdOXKEcLmXohFQuZnYkxIEb7LZ3xgmEjAUscdibpl6GtbFtw5Npp2Fxuyc9ZwoNrNvjNXfKj4m27fC0LlIVGPXeiokLkxqRtE/VMjW1XTjND121n1/aGghL/bTudj7fXt/5wvwFvAT5UEAO9vLG+sd2xqN6fG3AF0j3a+GA4Dt9i2Eevg2tkEf34l/vBQxLfKwfpjtkjGE3FOToMP4TeLRXhtpjpHjz8vGZmr4kprHKEEcngBlurDv8Eiao1Mk+g3qsAjdyDX2iZpYZsqUFlrj21rUizjvPNMJOXKnOTBRcbeEeqWLDwPo2PePIKfWcFAfnmcfMUFRonG3vIzFZIbtjLua9IV2YS1M57gYGLJOgF+vp9o6v9VbuA0qQgzbDArpCBLqWWCbbu6pCrMpyHQVSRrqndo+jyRTNUffodDqSs1KzrJgpzSE1DWpdSnr6uPA5ommuHSu20xsiGNN2dvcCd37tSzKb9Yxvrm3+TJ6Bo5yW3plgSWKeCQs/EsjdUtZp3sZOOkyKjUgO5S1p1tFycYB5Wm1tNKVe54g+gznCGXLEPh1zBGY6MzvpjGsUuDrCI1V9wnlk1t9QDG0tLTiJsYlo2xtWig5TUpoIq5HywIiYaGpOWO/AgekICsL2UyDPNeF4tax6aZ6MXbeZ5jsiTxYHuzPimE1qritWZaqtxFvWNkTRJpo4u7GxJCouoTmzealYO0bc813DNOe7rFRhbxWHTeluzVKu8S4+FWmfOIKVOTdYOjA+iioX+8iwclOt1S0d7L6qcBdP3xjQ34vdfHaMgw/qMnvd0hvAE7T5caR8gEUYmUcrA19hqoH4pfeWQpD2cQBrz7qBHdIDBKZv9nsZfL0jRNflA7sO+yodCOCTk3lw+y/MQYo6ec/Ay5H+4++Tj5NX3Pz42+BAv35+/4xYJ3r5Li9+hqRf+IFn8MIxC4UPBArgR18d/csOk785afELXHAyfYXnlJd+AYSSPvjinbv76J0r6J07mqJNrCh8bHY8WHlIwYy1STLGyTikjeP0gF14oJ9KnTsBgMgnd8hYM7LRLqcVJV+jqVviBhcRKgCJvjqWWIk6Fh1Jm/RaNvJsha+uKE6zRbuZLRmKqSNVRhcrZ3aU1vkl8O/G6qhQ8wuLXEQ8V5aJTcHCdrtpfalsJS3GjeM5vIekZ1KLnREh65WDMKnMH3twz9yN67eoI/BRLq59ay7X/tysgUXxdZQt5x2Wz0/mrbPXp93SKpfBrVIqHD3ynuHIODIlEWa2XC/PwA9WFq964eFoLje9ivL1mr7d8nJvU7Eix5RtHvnVZnNqlTMsAxbzO04g1wo5yNVOVZskFJcsmWkaR9UH3daFmCK1BZvGzl61w6yrLWZh2UW4DYQTkZuKUFtFwoJDH2unvXnb9SfomboUXt1Dmp9O+DZLaX2Xdbo5y1ybiasuR4beky5mHb9SWHqbMtOj6eICL2oXYbozk5zciIQu74zAgkAcOUb0LOZYjUWbZk/i94TZXDA6D2Mf0O89c/n0zCTM4p+5vLxCW1NedXGgU/nQq5KxfQv98L9fXXs858uncf3js7mNI5NhSQjvHp44QKYJU+ZV9dEKMwi5JpLThFcHPMrFRy8IKPM1vQ8ulyV3clSfjWiYv1PHrXa0W5WCzbNsmW6RO+OtGOO0UeZLXTf7c1c754t4UuqLfV6qiwF0zyVphd3cS7SbB+s+5YemKH4f+kHVsx+0IU/xRaUiRvvcD4ryvRLdrzlFemNTlLHpZI7seCQr8VN0II3qco+w82zGShdj7AcxOka4DQywR7JmdALEBr9xWf5G2rooUGh/gMCCbdNzM9/Zp+XO7ougKaaNisoSnRpiHjGk0ywdZu6Q67RQlrk3E9X6gtUXQWywy7LHYQHieDxebGZNHPjKopLOCadmpy6Ng048324FHRWtnQkoMk/1vlEksjMzIrszYXzb2iya7O3dlK21s61zB5AmXglNlzUScSedOY9NOsyZQTqu5xoh5LBwZZYwD6m6tsemt3xaHaCVqlGo4YxuxwVr8Km5hlroO0lQ0lBrrwAU+RTHbsV6vWH6PRvamKFbxow4akISLWLApRfGDeb6PjXKqWhXKcR33N6dX1B/uTX17XEeEoLsvjNMHHvTDBKhMX3rysR5mNlf6gKNtj9cEU4kv53oznmM120I3GDyMNa3Zcw4M6SPL/dW7cOmYX5yg+Gi8V/k4NW+lp9A1/KHxV+NHvyznwwPqFMUKFeXYV5Xn/+Ww+xPZX7OR1/7zrDu/oph+JujjLUaPHk5+uF7qTxaNKYDwfUZgtAPMOHAsaED8fuHMSl96f/QMIPAbKnnY/k3qi1PnoVd9WZL2vOqP6vgJk/sOyyZv+3UDBz8kSRf8TiELDoNwfNGZmCOgdzk73A5nHqNBFIIAwaM+2TBfXzx/V0+S5Z4s+oTFUP9VfFwA7UOHw2Vsnu70pfx97L2QvebotYGwJFP3n74VrzfvhyN/e7XUdiw3AjLdxKHWAfNy68aXN/Wy2sq7+3BvquWl+MMWpGc1P80qGZ4WftVeM1GA/y09pskLx73HaNQyXdIEZaA/qNv8D2BPmm4tzTfWOYPxPTu1ON+/65zfz4a9d2jiS82/s1DvTjYV8d5D1dHXU+qwncfgXFs5DrvmpiZ59+/cdq/4HLUw/vTc5j5I7Nv/f858z3pD0t9ZXRXHxKX/zc8/o6bd57642+Z3zZO+cVtp2+4W4dOMsSD78TE5/Tj44QdGqg/Dz9f8MKqSJzu0SYf2IRjP64FTRFpG0axJizzbLwKaJ4O/lI5aJ+7X6NujfdXzsrwA4nhXsB365FsWByGlGq8dhv88dG4gnlwVPc7YTz7ciPtEA29p88N++AvD8RDMAPR7w8YN/wog33Z8o/5efxcYNzAfWTk19qU43fNu/HHDd+ooMZm4f9bBo/2yLdF8PgVSZfX5WQEsk+v9AF8Ho/LwmqxHAgmr69Xg9CDkOJT51ePD17mfn+C1Sji6ran94ejf7kWjS54jrrzqNmWDVf4FduJdzwJsZTVbgdGs6U5UuWA3TP5lhKUjEJRYS8wSb0KeWMHPDq6pXuzi/JlUTWeLvT39paz24yx2KNaNUpJx9rSY1aA7dQLsVpS7f3uuaixlzhutiwoG5c8ENzlTEjdaYgCQN8RbiEXa8JBEc8UyZJV7eWlUliXbUNZo5PN/NBSvCfpFsYfWO6c9egcIwvigizlvSnMQn7ru5uwXV5XuJFKO8k5e02T4jbl4gjnzs943MfWtk4uQdxLtxPY8STO+fLOOWQUbW2d60z99MP//P2X/wUgIoEE","*Input Text","*No keyword with name 'name=q' found.","*name=q","eNorz8xLyS/Xyy8tKSgtiVYqLinKzEsvVorVS87PS04s0YhW0lLSUdJyKy3KzC8tBjH1EwsK9JH4euiCyJIupbm5lbgU6KeAZPWK8pPyS5AsQRf2yU/PzFMAgvDEzBKF0LySzBwF15zU3NS8EgXPYoWwzOLMpJxUkIKKgsSSDNvyIeSlkszcVKBDbU0BX2qD4w==","*Click Element","*SeleniumLibrary","*<p>Click the element identified by <code>locator\x3c/code>.\x3c/p>","eNqrKEgsybAtz8xLyS/Xyy8tKSgtiVYqLinKzEsvVorVS87PS04s0YhW0lLSUdJyKy3KzC8tBjH1EwsK9JH4euiCyJIupbm5lbgU6KeAZPWK8pPyS5AsQRf2yU/PzAMAXL87bA==","*Test Script New","*/app/TestFramework/TestFramework/test_script_new.robot","*TestFramework/test_script_new.robot","*    Open Browser to Example","*No keyword with name '    Open Browser' found.\n\nAlso teardown failed:\nNo keyword with name 'Close Browser' found.","*    Open Browser","*${URL}    chrome","*No keyword with name '    Open Browser' found.","*Title Should Be","*Example Domain","*Close Browser","*No keyword with name 'Close Browser' found.","*Verify Example Content","*Setup failed:\nNo keyword with name '    Open Browser to Example' found.\n\nAlso teardown failed:\nNo keyword with name 'Close Browser' found.","*No keyword with name '    Open Browser to Example' found.","*Verify Example Content1","*Log To Console","*<p>Logs the given message to the console.\x3c/p>"]);
Input Text    name=q   window.output["strings"].concat(["*","*TestFramework","*/app/TestFramework","*.","*/app/TestFramework/TestFramework","*Frooti","*/app/TestFramework/TestFramework/frooti.robot","*TestFramework/frooti.robot","*Test    Wait Until Element Is Visible    xpath=window.output["strings"].concat(["*","*TestFramework","*/app/TestFramework","*.","*/app/TestFramework/TestFramework","*Frooti","*/app/TestFramework/TestFramework/frooti.robot","*TestFramework/frooti.robot","*Test    timeout=5
    Click Element    xpath=window.output["strings"].concat(["*","*TestFramework","*/app/TestFramework","*.","*/app/TestFramework/TestFramework","*Frooti","*/app/TestFramework/TestFramework/frooti.robot","*TestFramework/frooti.robot","*Test
