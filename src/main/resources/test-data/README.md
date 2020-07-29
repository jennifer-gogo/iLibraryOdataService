For each entity set, test data can optionally be provided in a file *EntitySetName.json*.

Test data is available only in "test mode", not in production mode.

Please refer to the generated TestSettings class to see the options for enabling test mode.

Sample test data for file BookSet.json:

''' JSON
[
    {
        "Author": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        "BookID": "101",
        "BookName": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        "Category": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        "Description": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        "ISBN": "ABCDEFGHIJKLMNOPQRST",
        "Publisher": "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    },
    {
        "Author": null,
        "BookID": "102",
        "BookName": "XYZ",
        "Category": null,
        "Description": null,
        "ISBN": "XYZ",
        "Publisher": null
    }
]
'''

Sample test data for file LendingSet.json:

''' JSON
[
    {
        "BookID": "1234567890123",
        "BorrowDate": "2020-07-29T01:48:27.716Z",
        "LendingID": "201",
        "ReturnDate": "2020-07-29T01:48:27.716Z",
        "UserID": "1234567890123"
    },
    {
        "BookID": "9876543210987",
        "BorrowDate": "2020-07-29T01:48:27.716Z",
        "LendingID": "202",
        "ReturnDate": null,
        "UserID": "9876543210987"
    }
]
'''

Sample test data for file UserSet.json:

''' JSON
[
    {
        "Email": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        "Name": "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        "UserID": "301"
    },
    {
        "Email": null,
        "Name": "XYZ",
        "UserID": "302"
    }
]
'''
