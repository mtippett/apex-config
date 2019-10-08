
# Neptune Systems Apex Configuration

This repository serves as a backup of my Neptune Systems Apex AquaController.

The file for the configuration is available by telneting to port 23 on the AquaController, 
logging in with your Apex local username/password and issuing a ```l``` command.

![Alt text](https://g.gravizo.com/svg?
  digraph G {
    aize ="4,4";
    main [shape=box];
    main -> parse [weight=8];
    parse -> execute;
    main -> init [style=dotted];
    main -> cleanup;
    execute -> { make_string; printf}
    init -> make_string;
    edge [color=red];
    main -> printf [style=bold,label="100 times"];
    make_string [label="make a string"];
    node [shape=box,style=filled,color=".7 .3 1.0"];
    execute -> compare;
  }
)
