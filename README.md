# codegen-api-from-db
Generates a ServiceStack API from a database (using handlebars templates)

## Getting Started

This project leverages LINQPad and Handlebars templates, and uses the [lp](https://github.com/mattjcowan/lp) project repository to do this.

```
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/mattjcowan/lp/master/setup.bat -OutFile setup.bat"
.\setup.bat
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/mattjcowan/lp/master/linqpad/queries/db-to-json.linq -OutFile .\linqpad\queries\db-to-json.linq"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/mattjcowan/lp/master/linqpad/queries/static-gen.linq -OutFile .\linqpad\queries\static-gen.linq"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/mattjcowan/lp/master/linqpad/queries/serve-api.linq -OutFile .\linqpad\queries\serve-api.linq"
del setup.bat
del lp.bat
del servicestack-selfhost-example.bat
del linqpad\queries\servicestack-selfhost-example.linq
```

To edit the LINQPad scripts, the tool was automatically downloaded for you from the [LINQPad](https://www.linqpad.net/) site ...

```
.\linqpad\LINQPad.exe
```

2 samples are provided by default, but you will have to setup the databases yourself.
The samples use the [Northwind](https://northwinddatabase.codeplex.com/releases/view/71634), and [AdventureWorks 2014](https://msftdbprodsamples.codeplex.com/releases/view/125550) databases ...

Once you have the databases setup, alter the connection strings in the following files and run them from the command line to inspect the results.

- codegen-northwind.bat
- codegen-adventureworks.bat

### Viewing the api

To run the api, you'll need 'msbuild' to compile the generated code. Serve the api using one of the following:

- serve-northwind.bat
- serve-adventureworks.bat

### Editing the generated files

Use your favorite editor to edit the *.hbs (handlebars) templates as needed ... 
Notice the data directories where additional global data is injected into the handlebars compilation and rendering process.

Customize as needed to suit your needs, **you have FULL control**!
