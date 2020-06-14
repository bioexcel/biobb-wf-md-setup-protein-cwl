makedir biobb_adapters
git clone git@github.com:bioexcel/biobb_adapters.git biobb
for i in `grep 'run.*cwl' protein_md.cwl | awk '{print $2}' | sed 's/biobb_adapters\///g'`; do new_file=`find biobb/ -name "$i"`; echo cp $new_file biobb_adapters/$i; rm -rf biobb; done;
