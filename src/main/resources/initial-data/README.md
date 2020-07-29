For each entity set, initial data can optionally be provided in a file *EntitySetName.json*.

Initial data is available in production and test modes.

The sample initial data below will not be automatically used, but can be copy-pasted into JSON files.

Sample initial data for file BookSet.json:

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

Sample initial data for file LendingSet.json:

''' JSON
[
    {
        "BookID": "1234567890123",
        "BorrowDate": "2020-07-29T01:48:27.714Z",
        "LendingID": "201",
        "ReturnDate": "2020-07-29T01:48:27.714Z",
        "UserID": "1234567890123"
    },
    {
        "BookID": "9876543210987",
        "BorrowDate": "2020-07-29T01:48:27.714Z",
        "LendingID": "202",
        "ReturnDate": null,
        "UserID": "9876543210987"
    }
]
'''

Sample initial data for file UserSet.json:

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
