*** Test Cases ***

Forloop1
    :FOR    ${i}    IN RANGE    1   12
    \   log to console  ${i}

Forloop2
    :FOR    ${i}    IN  1  2  3  4  5  6  7  8
    \   log to console  ${i}

Forloop3withlist
    @{items}    create list  1  2   3   4   5
    :FOR    ${i}    IN  @{items}
    \   log to console  ${i}

Forloop4
    :FOR    ${i}    IN  john  david  charan  kartheek  budama  avyukth  suvchay
    \   log to console  ${i}

Forloop5
    @{namelist}     create list  john  david  charan  kartheek  budama  avyukth  suvchay
    :FOR    ${i}    IN  @{namelist}
    \   log to console  ${i}

Forloop6withexit
    @{items}    create list  1  2   3   4   5   6
    :FOR    ${i}    IN  @{items}
    \   log to console  ${i}
    \   exit for loop if  ${i}==2


