# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"61925","system":"gprdproduct"},{"code":"9865","system":"gprdproduct"},{"code":"35251","system":"gprdproduct"},{"code":"11316","system":"gprdproduct"},{"code":"35144","system":"gprdproduct"},{"code":"35149","system":"gprdproduct"},{"code":"55767","system":"gprdproduct"},{"code":"35150","system":"gprdproduct"},{"code":"55728","system":"gprdproduct"},{"code":"55729","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anti-diabetics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anti-diabetics-20microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anti-diabetics-20microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anti-diabetics-20microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
