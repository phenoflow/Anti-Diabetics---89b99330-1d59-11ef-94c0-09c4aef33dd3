# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Ian Buchan, Mamas A Mamas, Naveed Sattar, Darren M Ashcroft, Martin M Rutter, 2024.

import sys, csv, re

codes = [{"code":"25636","system":"gprdproduct"},{"code":"8976","system":"gprdproduct"},{"code":"54480","system":"gprdproduct"},{"code":"21424","system":"gprdproduct"},{"code":"34676","system":"gprdproduct"},{"code":"64217","system":"gprdproduct"},{"code":"17706","system":"gprdproduct"},{"code":"41431","system":"gprdproduct"},{"code":"34802","system":"gprdproduct"},{"code":"54891","system":"gprdproduct"},{"code":"5636","system":"gprdproduct"},{"code":"29326","system":"gprdproduct"},{"code":"62326","system":"gprdproduct"},{"code":"41204","system":"gprdproduct"},{"code":"60682","system":"gprdproduct"},{"code":"547","system":"gprdproduct"},{"code":"12513","system":"gprdproduct"},{"code":"1254","system":"gprdproduct"},{"code":"41593","system":"gprdproduct"},{"code":"34507","system":"gprdproduct"},{"code":"48533","system":"gprdproduct"},{"code":"41558","system":"gprdproduct"},{"code":"65083","system":"gprdproduct"},{"code":"2219","system":"gprdproduct"},{"code":"45821","system":"gprdproduct"},{"code":"34563","system":"gprdproduct"},{"code":"13331","system":"gprdproduct"},{"code":"46716","system":"gprdproduct"},{"code":"45775","system":"gprdproduct"},{"code":"17698","system":"gprdproduct"},{"code":"31474","system":"gprdproduct"},{"code":"52449","system":"gprdproduct"},{"code":"46665","system":"gprdproduct"},{"code":"54973","system":"gprdproduct"},{"code":"34706","system":"gprdproduct"},{"code":"59809","system":"gprdproduct"},{"code":"52445","system":"gprdproduct"},{"code":"41559","system":"gprdproduct"},{"code":"50124","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anti-diabetics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anti-diabetics-625mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anti-diabetics-625mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anti-diabetics-625mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
