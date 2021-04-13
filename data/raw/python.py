import csv, json
print("Hello")

csvFilePath = 'bibeval/bibeval_tx_siisurveytool_areas_categories.csv'
jsonFilePath = 'bibeval_tx_siisurveytool_areas_categories.json'

data = {}


with open(csvFilePath) as csvFile:
    csvReader = csv.DictReader(csvFile)
    for rows in csvReader:
        id = rows['uid']
        data[id] = rows

with open(jsonFilePath, 'w') as jsonFile:
    jsonFile.write(json.dumps(data, indent=4))
