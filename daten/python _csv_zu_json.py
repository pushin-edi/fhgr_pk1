import csv, json

csvFilePath = 'bibeval/csv/bibeval_areas_categories.csv'
jsonFilePath = 'bibveal/json/bibeval_areas_categories.json'

data = {}


with open(csvFilePath, encoding="UTF-8") as csvFile:
    csvReader = csv.DictReader(csvFile)
    for rows in csvReader:
        id = rows['uid']
        data[id] = rows

with open(jsonFilePath, 'w') as jsonFile:
    jsonFile.write(json.dumps(data, indent=4))
