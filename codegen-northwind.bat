.\linqpad\lprun.exe .\linqpad\queries\db-to-json.linq /dialect=SqlServer /output=src_northwind\data\db.json /connectionstring="Data Source=.\sqlexpress;Initial Catalog=Northwind;Integrated Security=True"
.\linqpad\lprun.exe .\linqpad\queries\static-gen.linq /data=src_northwind\data /templates=templates /output=src_northwind\src
