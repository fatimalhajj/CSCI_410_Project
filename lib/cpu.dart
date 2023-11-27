class cpu{
  double _cpi= 0;
  double _Ic=0;
  double _freq=0;
  int ic=0;

  cpu(double cpi , double Ic , double freq){
    _cpi = cpi;
    _Ic = Ic;
    _freq = freq;
  }
  double cpuresult(){
    return((_Ic * _cpi)/_freq);
  }
  double mipsresult(){
    return (_freq/(_cpi*1000000));
  }
  @override
  String toString(){
    return """ 
    
    Input:
    CPI = $_cpi
    Sum of Instruction Count = $_Ic
    Frequency = $_freq 
    
    Output:
    CPU = ${cpuresult()}
    MIPS = ${mipsresult()}
    
    
    """;
  }

}