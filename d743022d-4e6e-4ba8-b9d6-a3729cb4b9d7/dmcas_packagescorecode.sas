package _701FA927F8894721E1346630744ECD653C93AAAA /overwrite=yes;
  dcl package score sc();
  dcl double "P_BAD1" having label n'Predicted: BAD=1';
  dcl double "P_BAD0" having label n'Predicted: BAD=0';
  dcl nchar(32) "I_BAD" having label n'Into: BAD';
  dcl nchar(4) "_WARN_" having label n'Warnings';
  varlist allvars [_all_];

  method init();
    sc.setvars(allvars);
    sc.setKey(n'701FA927F8894721E1346630744ECD653C93AAAA');
  end;

  method score(
    double "LOAN",
    double "VALUE",
    double "MORTDUE",
    double "YOJ",
    double "DEROG",
    double "DELINQ",
    double "CLAGE",
    double "NINQ",
    double "CLNO",
    double "DEBTINC",
    nchar(7) "JOB",
    nchar(7) "REASON",
    IN_OUT double "P_BAD1",
    IN_OUT double "P_BAD0",
    IN_OUT nchar(32) "I_BAD",
    IN_OUT nchar(4) "_WARN_"
  );

    this."LOAN" = "LOAN";
    this."VALUE" = "VALUE";
    this."MORTDUE" = "MORTDUE";
    this."YOJ" = "YOJ";
    this."DEROG" = "DEROG";
    this."DELINQ" = "DELINQ";
    this."CLAGE" = "CLAGE";
    this."NINQ" = "NINQ";
    this."CLNO" = "CLNO";
    this."DEBTINC" = "DEBTINC";
    this."JOB" = "JOB";
    this."REASON" = "REASON";

    sc.scoreRecord();

    "P_BAD1" = this."P_BAD1";
    "P_BAD0" = this."P_BAD0";
    "I_BAD" = this."I_BAD";
    "_WARN_" = this."_WARN_";
  end;

endpackage;
