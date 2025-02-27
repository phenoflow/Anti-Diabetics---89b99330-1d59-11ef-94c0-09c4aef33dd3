# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"3550","system":"gprdproduct"},{"code":"39729","system":"gprdproduct"},{"code":"1593","system":"gprdproduct"},{"code":"54442","system":"gprdproduct"},{"code":"11737","system":"gprdproduct"},{"code":"5255","system":"gprdproduct"},{"code":"11760","system":"gprdproduct"},{"code":"7861","system":"gprdproduct"},{"code":"10546","system":"gprdproduct"},{"code":"735","system":"gprdproduct"},{"code":"10566","system":"gprdproduct"},{"code":"6447","system":"gprdproduct"},{"code":"4790","system":"gprdproduct"},{"code":"2454","system":"gprdproduct"},{"code":"10545","system":"gprdproduct"},{"code":"16209","system":"gprdproduct"},{"code":"1839","system":"gprdproduct"},{"code":"3551","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anti-diabetics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anti-diabetics-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anti-diabetics-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anti-diabetics-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
