<#
From the Microsoft Docs

DSC provides three special variables that can be used in a configuration script: 
$AllNodes, $Node, and $ConfigurationData.

-$AllNodes refers to the entire collection of nodes defined in ConfigurationData. 
-You can filter the AllNodes collection by using .Where() and .ForEach().
-$Node refers to a particular entry in the AllNodes collection after it is filtered by using .Where() or .ForEach().
-$ConfigurationData refers to the entire hash table that is passed as the parameter when compiling a configuration.
#>

@{
    AllNodes = @(
        @{
            # Applys to all Nodes
            NodeName = '*' 
            DestinationPath = 'c:\Log\Logfile.txt'
            ServiceState = 'Running'
            BitsService = 'Bits'
            EnsurePresent = 'Present'
            EnsureAbsent = 'Absent'
            Stuff1 = 'blah'
            Stuff2 = 'blah'
            Stuff3 = 'blah'
        },

        @{
            NodeName = 'S1'
            Role = 'DC'
        },

        @{
            NodeName = 'S2'
            Role = 'DNS'
 
        }

        # JASON - add some more
        # Remind everyone, this is normally auto-generated
    );
    DCData = @{
        Feature = 'AD-Domain-Services'
        Stuff4 = 'blah'
        Stuff5 = 'blah'
    }

    DNSData = @{
        Feature = 'DNS'
        Stuff6 = 'blah'
        Stuff7 = 'blah'
        Stuff8 = 'blah'
        Stuff9 = 'blah'
        UniqueToPrimary = 'Stuff'
        UniqueToSecomdary = 'MoreStuff'
    }



    
}

