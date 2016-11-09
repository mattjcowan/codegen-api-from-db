.\linqpad\lprun.exe .\linqpad\queries\db-to-json.linq /dialect=SqlServer /output=src_adventureworks\data\db.json /connectionstring="Data Source=.\sqlexpress;Initial Catalog=AdventureWorks2014;Integrated Security=True"
.\linqpad\lprun.exe .\linqpad\queries\static-gen.linq /data=src_adventureworks\data /templates=templates /output=src_adventureworks\src
