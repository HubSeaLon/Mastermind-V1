program Mastermind;

uses crt;

var

  // Commun

  jouer : integer;
  role : integer;

  // Decodeur

  TM2 : array[1..11, 1..6] of string;
  i, j, j1, x1, y1, decodeur1, decodeur2, win : integer;
  juste1, juste2, juste3, juste4 : integer ;
  code1, code2, code3, code4, double1, double2, double3 : integer;
  bon : integer;
  choix : integer;
  tot_juste : integer
    ;

  // Codeur

  rep, case1, case2, case3, case4, ban1, ban2 :integer;
  TM : array[1..4] of integer;
  tab2 : array[1..6,1..10] of integer;
  nbre_coup, refaire : integer;





begin
  randomize;

  jouer := 0;


  while (jouer = 0) do
  begin



  ban1:=-1;
  ban2:=-1;
  role:=0;
  case1:=-1;
  case2:=-1;
  case3:=-1;
  case4:=-1;
  i:=0;
  TM[1]:=-1;
  TM[2]:=-1;
  TM[3]:=-1;
  TM[4]:=-1;
  tab2[5,1]:=0;
  tab2[6,1]:=0;
  tab2[5,2]:=0;
  tab2[6,2]:=0;
  tab2[5,3]:=0;
  tab2[6,3]:=0;
  tab2[5,4]:=0;
  tab2[6,4]:=0;
  tab2[5,5]:=0;
  tab2[6,5]:=0;
  tab2[5,6]:=0;
  tab2[6,6]:=0;
  tab2[5,7]:=0;
  tab2[6,7]:=0;
  tab2[5,8]:=0;
  tab2[6,8]:=0;
  tab2[5,9]:=0;
  tab2[6,9]:=0;
  tab2[5,10]:=0;
  tab2[6,10]:=0;
  writeln('========================================================================================================================');
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln('              e    e           e      ,d88~~\ ~~~888~~~ 888~~  888~-_        e    e      888 888b    | 888~-_  ');
  writeln('             d8b  d8b         d8b     8888       888    888___ 888   \      d8b  d8b     888 |Y88b   | 888   \ ');
  writeln('            d888bdY88b       /Y88b     Y88b      888    888    888    |    d888bdY88b    888 | Y88b  | 888    |');
  writeln('           / Y88Y Y888b     /  Y88b     Y88b,    888    888    888   /    / Y88Y Y888b   888 |  Y88b | 888    |');
  writeln('          /   YY   Y888b   /____Y88b     8888    888    888    888_-~    /   YY   Y888b  888 |   Y88b| 888   / ');
  writeln('         /          Y888b /      Y88b \__88P     888    888___ 888 ~-_  /          Y888b 888 |    Y888 888_-~  ');
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln('                                                   APPUYEZ SUR ENTRER');
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  write('========================================================================================================================');
  readln;
  clrscr;
  writeln('========================================================================================================================');
  writeln;
  writeln('       Vous vous appretez a jouer a MASTERMIND, le principe est simple : imaginer un code impossible a dechiffrer');
  writeln('                         pour l''ia, ou bien dechiffrer le code qu''elle aura elle meme choisit!');
  writeln;
  writeln('         En tant que codeur vous devrez indiquer pour chaque chiffre si il est "juste" ou "juste et bien place",');
  writeln('                          ce qui determinera le nombre de chiffre "juste" et "juste et bien place".');
  writeln;
  writeln('             Les codes sont constitues de 4 chiffres prenant les valeurs de 0 a 5 et il n''y a pas doublon.');
  writeln('                           Le decodeur aura un total de 10 essais pour trouver le code de l''ia.');
  writeln;
  writeln('               Pour gagner en tant que codeur vous devrez reussir a ne pas faire trouver votre code a l''ia,');
  writeln('                                             mais si vous tricher, vous perdez.');
  writeln('                           (il est plus facile de faire deviner le code à l''ia que de trouver le code)');
  writeln;
  writeln('                                                  BONNE CHANCE A VOUS !');
  writeln;
  writeln;
  writeln('                                                  APPUYEZ SUR <ENTREE>');
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  write('========================================================================================================================');
  readln;
  clrscr;
  writeln('========================================================================================================================');
  writeln;
  writeln;
  writeln;
  writeln('                                            Quel role souhaitez vous avoir ?');
  writeln('                                                       1 : codeur');
  writeln('                                                      2 : decodeur');
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln('                                              TAPEZ 1 OU 2 ET TAPEZ <ENTREE>');
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  writeln;
  write('========================================================================================================================');
  readln(role);
  while(role<>1)and(role<>2)do
  begin
    write('Tapez 1 ou 2 svp :');
    readln(role);

  end;

  clrscr;
                                      // CODEUR
  if(role=1)then
  begin
    nbre_coup := 0;
    writeln('========================================================================================================================');
    writeln;
    writeln;
    writeln;
    writeln('                                      Quelle est la premiere valeur de votre code ?');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln('                                                  |---|---|---|---|');
    writeln('                                                  |   |   |   |   |');
    writeln('                                                  |---|---|---|---|');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    write('========================================================================================================================');
    readln(TM[1]);
    while(TM[1]<0)or(TM[1]>5)do
    begin
      write('Tapez entre 0 et 5 svp :');
      readln(TM[1]);
    end;
    clrscr;

    writeln('========================================================================================================================');
    writeln;
    writeln;
    writeln;
    writeln('                                       Quelle est la seconde valeur de votre code ?                                ');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln('                                                  |---|---|---|---|');
    writeln('                                                  | ',TM[1],' |   |   |   |');
    writeln('                                                  |---|---|---|---|');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    write('========================================================================================================================');


    while(TM[2]<0)or(TM[2]>5)do
    begin
      write('Tapez entre 0 et 5 svp :');
      readln(TM[2]);
      while(TM[2]=TM[1])do
      begin
        write('Pas de doublons svp :');
        readln(TM[2]);
      end;
    end;
    clrscr;

    writeln('========================================================================================================================');
    writeln;
    writeln;
    writeln;
    writeln('                                      Quelle est la troisieme valeur de votre code ?                                ');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln('                                                  |---|---|---|---|');
    writeln('                                                  | ',TM[1],' | ',TM[2],' |   |   |');
    writeln('                                                  |---|---|---|---|');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    write('========================================================================================================================');


    while(TM[3]<0)or(TM[3]>5)do
    begin
      write('Tapez entre 0 et 5 svp :');
      readln(TM[3]);
      while(TM[3]=TM[1])or(TM[3]=TM[2])do
      begin
        write('Pas de doublons svp :');
        readln(TM[3]);
      end;
    end;
    clrscr;

    writeln('========================================================================================================================');
    writeln;
    writeln;
    writeln;
    writeln('                                      Quelle est la quatrieme valeur de votre code ?                                ');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln('                                                  |---|---|---|---|');
    writeln('                                                  | ',TM[1],' | ',TM[2],' | ',TM[3],' |   |');
    writeln('                                                  |---|---|---|---|');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    write('========================================================================================================================');


    while(TM[4]<0)or(TM[4]>5)do
    begin
      write('Tapez entre 0 et 5 svp :');
      readln(TM[4]);
      while(TM[4]=TM[1])or(TM[4]=TM[2])or(TM[4]=TM[3])do
      begin
        write('Pas de doublons svp :');
        readln(TM[4]);
      end;
    end;
    clrscr;

    writeln('========================================================================================================================');
    writeln;
    writeln;
    writeln;
    writeln('                                                                      ');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln('                                                  |---|---|---|---|');
    writeln('                                                  | ',TM[1],' | ',TM[2],' | ',TM[3],' | ',TM[4],' |');
    writeln('                                                  |---|---|---|---|');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    write('========================================================================================================================');

    tab2[1,1]:=random(6);

    TAB2[2,1]:=random(6);
    while(TAB2[2,1]=TAB2[1,1])do
    begin
      TAB2[2,1]:=random(6);
    end;

    TAB2[3,1]:=random(6);
    while(TAB2[3,1]=tab2[1,1])or(tab2[3,1]=tab2[2,1])do
    begin
      tab2[3,1]:=random(6);
    end;

    tab2[4,1]:=random(6);
    while(tab2[4,1]=tab2[1,1])or(tab2[4,1]=tab2[2,1])or(tab2[4,1]=tab2[3,1])do
    begin
      tab2[4,1]:=random(6);
    end;
    clrscr;
    nbre_coup := nbre_coup + 1;
    writeln('                                                       MASTERMIND');
    writeln('                                                  (Vous etes le codeur)');
    writeln;
    writeln;
    writeln('                                  ---------------------------------------------------- ');
    writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |         |         |         |         | |   |   ||     ');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |--------------------------------------------------|');
    writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
    writeln('                                  ----------------------------------------------------');
    write('                         La premiere valeur(',tab2[1,1],') est-elle comprise dans votre code? 1: oui 2: non  ->');
    readln(rep);
    while(rep<>1)and(rep<>2)do
    begin
      readln(rep);
    end;
    if(rep=1)then
    begin
      tab2[5,1]:=tab2[5,1]+1;
      write('                         La premiere valeur(',tab2[1,1],') est-elle a la bonne position? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[6,1]:=tab2[6,1]+1;
        case1:=tab2[1,1];
      end;
    end
    else
    begin
      ban1:=tab2[1,1];
    end;

    write('                         La deuxieme valeur(',tab2[2,1],') est-elle comprise dans votre code? 1: oui 2: non  ->');
    readln(rep);
    while(rep<>1)and(rep<>2)do
    begin
      readln(rep);
    end;
    if(rep=1)then
    begin
      tab2[5,1]:=tab2[5,1]+1;
      write('                         La deuxieme valeur(',tab2[2,1],') est-elle a la bonne position? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[6,1]:=tab2[6,1]+1;
        case2:=tab2[2,1];
      end;
    end
    else
    begin
      if(ban1<>-1)then
      begin
        ban2:=tab2[2,1];
      end
      else
      begin
        ban1:=tab2[2,1];
      end;
    end;
    write('                         La troisieme valeur(',tab2[3,1],') est-elle comprise dans votre code? 1: oui 2: non  ->');
    readln(rep);
    while(rep<>1)and(rep<>2)do
    begin
      readln(rep);
    end;
    if(rep=1)then
    begin
      tab2[5,1]:=tab2[5,1]+1;
      write('                         La troisieme valeur(',tab2[3,1],') est-elle a la bonne position? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[6,1]:=tab2[6,1]+1;
        case3:=tab2[3,1];
      end;
    end
    else
    begin
      if(ban1<>-1)then
      begin
        ban2:=tab2[3,1];
      end
      else
      begin
        ban1:=tab2[3,1];
      end;
    end;
    write('                         La quatrieme valeur(',tab2[4,1],') est-elle comprise dans votre code? 1: oui 2: non  ->');
    readln(rep);
    while(rep<>1)and(rep<>2)do
    begin
      readln(rep);
    end;
    if(rep=1)then
    begin
      tab2[5,1]:=tab2[5,1]+1;
      write('                         La quatrieme valeur(',tab2[4,1],') est-elle a la bonne position? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[6,1]:=tab2[6,1]+1;
        case4:=tab2[4,1];
      end;
    end
    else
    begin
      if(ban1<>-1)then
      begin
        ban2:=tab2[4,1];
      end
      else
      begin
        ban1:=tab2[4,1];
      end;
    end;



//============================================================================================================================================================================================
    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,2]:=random(6);
        while(tab2[1,2]=ban1)or(tab2[1,2]=ban2)or(tab2[1,2]=case2)or(tab2[1,2]=case3)or(tab2[1,2]=case4)do
        begin
          tab2[1,2]:=random(6);
        end;
      end
      else
      begin
        tab2[1,2]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,2]:=random(6);
        while(tab2[2,2]=ban1)or(tab2[2,2]=ban2)or(tab2[2,2]=tab2[1,2])or(tab2[2,2]=case3)or(tab2[2,2]=case4)do
        begin
          tab2[2,2]:=random(6);
        end;
      end
      else
      begin
        tab2[2,2]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,2]:=random(6);
        while(tab2[3,2]=ban1)or(tab2[3,2]=ban2)or(tab2[3,2]=tab2[1,2])or(tab2[3,2]=tab2[2,2])or(tab2[3,2]=case4)do
        begin
          tab2[3,2]:=random(6);
        end;
      end
      else
      begin
        tab2[3,2]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,2]:=random(6);
        while(tab2[4,2]=ban1)or(tab2[4,2]=ban2)or(tab2[4,2]=tab2[1,2])or(tab2[4,2]=tab2[2,2])or(tab2[4,2]=tab2[3,2])do
        begin
          tab2[4,2]:=random(6);
        end;
      end
      else
      begin
        tab2[4,2]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,2],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,2]:=tab2[5,2]+1;
        write('                         La premiere valeur(',tab2[1,2],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,2]:=tab2[6,2]+1;
          case1:=tab2[1,2];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,2];
        end
        else
        begin
          ban1:=tab2[1,2];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,2],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,2]:=tab2[5,2]+1;
        write('                         La deuxieme valeur(',tab2[2,2],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,2]:=tab2[6,2]+1;
          case2:=tab2[2,2];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,2];
        end
        else
        begin
          ban1:=tab2[2,2];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,2],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,2]:=tab2[5,2]+1;
        write('                         La troisieme valeur(',tab2[3,2],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,2]:=tab2[6,2]+1;
          case3:=tab2[3,2];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,2];
        end
        else
        begin
          ban1:=tab2[3,2];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,2],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,2]:=tab2[5,2]+1;
        write('                         La quatrieme valeur(',tab2[4,2],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,2]:=tab2[6,2]+1;
          case4:=tab2[4,2];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,2];
        end
        else
        begin
          ban1:=tab2[4,2];
        end;
      end;
    end;




    //============================================================================================================================================================================================

    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,3]:=random(6);
        while(tab2[1,3]=ban1)or(tab2[1,3]=ban2)or(tab2[1,3]=case2)or(tab2[1,3]=case3)or(tab2[1,3]=case4)do
        begin
          tab2[1,3]:=random(6);
        end;
      end
      else
      begin
        tab2[1,3]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,3]:=random(6);
        while(tab2[2,3]=ban1)or(tab2[2,3]=ban2)or(tab2[2,3]=tab2[1,3])or(tab2[2,3]=case3)or(tab2[2,3]=case4)do
        begin
          tab2[2,3]:=random(6);
        end;
      end
      else
      begin
        tab2[2,3]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,3]:=random(6);
        while(tab2[3,3]=ban1)or(tab2[3,3]=ban2)or(tab2[3,3]=tab2[1,3])or(tab2[3,3]=tab2[2,3])or(tab2[3,3]=case4)do
        begin
          tab2[3,3]:=random(6);
        end;
      end
      else
      begin
        tab2[3,3]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,3]:=random(6);
        while(tab2[4,3]=ban1)or(tab2[4,3]=ban2)or(tab2[4,3]=tab2[1,3])or(tab2[4,3]=tab2[2,3])or(tab2[4,3]=tab2[3,3])do
        begin
          tab2[4,3]:=random(6);
        end;
      end
      else
      begin
        tab2[4,3]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | | ',tab2[6,2],' | ',tab2[5,2],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,3],'    |    ',tab2[2,3],'    |    ',tab2[3,3],'    |    ',tab2[4,3],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,3],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,3]:=tab2[5,3]+1;
        write('                         La premiere valeur(',tab2[1,3],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,3]:=tab2[6,3]+1;
          case1:=tab2[1,3];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,3];
        end
        else
        begin
          ban1:=tab2[1,3];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,3],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,3]:=tab2[5,3]+1;
        write('                         La deuxieme valeur(',tab2[2,3],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,3]:=tab2[6,3]+1;
          case2:=tab2[2,3];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,3];
        end
        else
        begin
          ban1:=tab2[2,3];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,3],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,3]:=tab2[5,3]+1;
        write('                         La troisieme valeur(',tab2[3,3],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,3]:=tab2[6,3]+1;
          case3:=tab2[3,3];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,3];
        end
        else
        begin
          ban1:=tab2[3,3];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,3],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,3]:=tab2[5,3]+1;
        write('                         La quatrieme valeur(',tab2[4,3],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,3]:=tab2[6,3]+1;
          case4:=tab2[4,3];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,3];
        end
        else
        begin
          ban1:=tab2[4,3];
        end;
      end;
    end;



    //============================================================================================================================================================================================

    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,4]:=random(6);
        while(tab2[1,4]=ban1)or(tab2[1,4]=ban2)or(tab2[1,4]=case2)or(tab2[1,4]=case3)or(tab2[1,4]=case4)do
        begin
          tab2[1,4]:=random(6);
        end;
      end
      else
      begin
        tab2[1,4]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,4]:=random(6);
        while(tab2[2,4]=ban1)or(tab2[2,4]=ban2)or(tab2[2,4]=tab2[1,4])or(tab2[2,4]=case3)or(tab2[2,4]=case4)do
        begin
          tab2[2,4]:=random(6);
        end;
      end
      else
      begin
        tab2[2,4]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,4]:=random(6);
        while(tab2[3,4]=ban1)or(tab2[3,4]=ban2)or(tab2[3,4]=tab2[1,4])or(tab2[3,4]=tab2[2,4])or(tab2[3,4]=case4)do
        begin
          tab2[3,4]:=random(6);
        end;
      end
      else
      begin
        tab2[3,4]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,4]:=random(6);
        while(tab2[4,4]=ban1)or(tab2[4,4]=ban2)or(tab2[4,4]=tab2[1,4])or(tab2[4,4]=tab2[2,4])or(tab2[4,4]=tab2[3,4])do
        begin
          tab2[4,4]:=random(6);
        end;
      end
      else
      begin
        tab2[4,4]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | | ',tab2[6,2],' | ',tab2[5,2],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,3],'    |    ',tab2[2,3],'    |    ',tab2[3,3],'    |    ',tab2[4,3],'    | | ',tab2[6,3],' | ',tab2[5,3],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,4],'    |    ',tab2[2,4],'    |    ',tab2[3,4],'    |    ',tab2[4,4],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,4],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,4]:=tab2[5,4]+1;
        write('                         La premiere valeur(',tab2[1,4],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,4]:=tab2[6,4]+1;
          case1:=tab2[1,4];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,4];
        end
        else
        begin
          ban1:=tab2[1,4];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,4],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,4]:=tab2[5,4]+1;
        write('                         La deuxieme valeur(',tab2[2,4],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,4]:=tab2[6,4]+1;
          case2:=tab2[2,4];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,4];
        end
        else
        begin
          ban1:=tab2[2,4];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,4],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,4]:=tab2[5,4]+1;
        write('                         La troisieme valeur(',tab2[3,4],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,4]:=tab2[6,4]+1;
          case3:=tab2[3,4];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,4];
        end
        else
        begin
          ban1:=tab2[3,4];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,4],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,4]:=tab2[5,4]+1;
        write('                         La quatrieme valeur(',tab2[4,4],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,4]:=tab2[6,4]+1;
          case4:=tab2[4,4];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,4];
        end
        else
        begin
          ban1:=tab2[4,4];
        end;
      end;
    end;

    //============================================================================================================================================================================================

    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,5]:=random(6);
        while(tab2[1,5]=ban1)or(tab2[1,5]=ban2)or(tab2[1,5]=case2)or(tab2[1,5]=case3)or(tab2[1,5]=case4)do
        begin
          tab2[1,5]:=random(6);
        end;
      end
      else
      begin
        tab2[1,5]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,5]:=random(6);
        while(tab2[2,5]=ban1)or(tab2[2,5]=ban2)or(tab2[2,5]=tab2[1,5])or(tab2[2,5]=case3)or(tab2[2,5]=case4)do
        begin
          tab2[2,5]:=random(6);
        end;
      end
      else
      begin
        tab2[2,5]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,5]:=random(6);
        while(tab2[3,5]=ban1)or(tab2[3,5]=ban2)or(tab2[3,5]=tab2[1,5])or(tab2[3,5]=tab2[2,5])or(tab2[3,5]=case4)do
        begin
          tab2[3,5]:=random(6);
        end;
      end
      else
      begin
        tab2[3,5]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,5]:=random(6);
        while(tab2[4,5]=ban1)or(tab2[4,5]=ban2)or(tab2[4,5]=tab2[1,5])or(tab2[4,5]=tab2[2,5])or(tab2[4,5]=tab2[3,5])do
        begin
          tab2[4,5]:=random(6);
        end;
      end
      else
      begin
        tab2[4,5]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | | ',tab2[6,2],' | ',tab2[5,2],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,3],'    |    ',tab2[2,3],'    |    ',tab2[3,3],'    |    ',tab2[4,3],'    | | ',tab2[6,3],' | ',tab2[5,3],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,4],'    |    ',tab2[2,4],'    |    ',tab2[3,4],'    |    ',tab2[4,4],'    | | ',tab2[6,4],' | ',tab2[5,4],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,5],'    |    ',tab2[2,5],'    |    ',tab2[3,5],'    |    ',tab2[4,5],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,5],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,5]:=tab2[5,5]+1;
        write('                         La premiere valeur(',tab2[1,5],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,5]:=tab2[6,5]+1;
          case1:=tab2[1,5];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,5];
        end
        else
        begin
          ban1:=tab2[1,5];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,5],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,5]:=tab2[5,5]+1;
        write('                         La deuxieme valeur(',tab2[2,5],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,5]:=tab2[6,5]+1;
          case2:=tab2[2,5];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,5];
        end
        else
        begin
          ban1:=tab2[2,5];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,5],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,5]:=tab2[5,5]+1;
        write('                         La troisieme valeur(',tab2[3,5],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,5]:=tab2[6,5]+1;
          case3:=tab2[3,5];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,5];
        end
        else
        begin
          ban1:=tab2[3,5];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,5],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,5]:=tab2[5,5]+1;
        write('                         La quatrieme valeur(',tab2[4,5],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,5]:=tab2[6,5]+1;
          case4:=tab2[4,5];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,5];
        end
        else
        begin
          ban1:=tab2[4,5];
        end;
      end;
    end;



    //============================================================================================================================================================================================

    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,6]:=random(6);
        while(tab2[1,6]=ban1)or(tab2[1,6]=ban2)or(tab2[1,6]=case2)or(tab2[1,6]=case3)or(tab2[1,6]=case4)do
        begin
          tab2[1,6]:=random(6);
        end;
      end
      else
      begin
        tab2[1,6]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,6]:=random(6);
        while(tab2[2,6]=ban1)or(tab2[2,6]=ban2)or(tab2[2,6]=tab2[1,6])or(tab2[2,6]=case3)or(tab2[2,6]=case4)do
        begin
          tab2[2,6]:=random(6);
        end;
      end
      else
      begin
        tab2[2,6]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,6]:=random(6);
        while(tab2[3,6]=ban1)or(tab2[3,6]=ban2)or(tab2[3,6]=tab2[1,6])or(tab2[3,6]=tab2[2,6])or(tab2[3,6]=case4)do
        begin
          tab2[3,6]:=random(6);
        end;
      end
      else
      begin
        tab2[3,6]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,6]:=random(6);
        while(tab2[4,6]=ban1)or(tab2[4,6]=ban2)or(tab2[4,6]=tab2[1,6])or(tab2[4,6]=tab2[2,6])or(tab2[4,6]=tab2[3,6])do
        begin
          tab2[4,6]:=random(6);
        end;
      end
      else
      begin
        tab2[4,6]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | | ',tab2[6,2],' | ',tab2[5,2],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,3],'    |    ',tab2[2,3],'    |    ',tab2[3,3],'    |    ',tab2[4,3],'    | | ',tab2[6,3],' | ',tab2[5,3],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,4],'    |    ',tab2[2,4],'    |    ',tab2[3,4],'    |    ',tab2[4,4],'    | | ',tab2[6,4],' | ',tab2[5,4],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,5],'    |    ',tab2[2,5],'    |    ',tab2[3,5],'    |    ',tab2[4,5],'    | | ',tab2[6,5],' | ',tab2[5,5],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,6],'    |    ',tab2[2,6],'    |    ',tab2[3,6],'    |    ',tab2[4,6],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,6],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,6]:=tab2[5,6]+1;
        write('                         La premiere valeur(',tab2[1,6],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,6]:=tab2[6,6]+1;
          case1:=tab2[1,6];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,6];
        end
        else
        begin
          ban1:=tab2[1,6];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,6],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,6]:=tab2[5,6]+1;
        write('                         La deuxieme valeur(',tab2[2,6],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,6]:=tab2[6,6]+1;
          case2:=tab2[2,6];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,6];
        end
        else
        begin
          ban1:=tab2[2,6];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,6],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,6]:=tab2[5,6]+1;
        write('                         La troisieme valeur(',tab2[3,6],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,6]:=tab2[6,6]+1;
          case3:=tab2[3,6];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,6];
        end
        else
        begin
          ban1:=tab2[3,6];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,6],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,6]:=tab2[5,6]+1;
        write('                         La quatrieme valeur(',tab2[4,6],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,6]:=tab2[6,6]+1;
          case4:=tab2[4,6];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,6];
        end
        else
        begin
          ban1:=tab2[4,6];
        end;
      end;
    end;





    //============================================================================================================================================================================================

    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,7]:=random(6);
        while(tab2[1,7]=ban1)or(tab2[1,7]=ban2)or(tab2[1,7]=case2)or(tab2[1,7]=case3)or(tab2[1,7]=case4)do
        begin
          tab2[1,7]:=random(6);
        end;
      end
      else
      begin
        tab2[1,7]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,7]:=random(6);
        while(tab2[2,7]=ban1)or(tab2[2,7]=ban2)or(tab2[2,7]=tab2[1,7])or(tab2[2,7]=case3)or(tab2[2,7]=case4)do
        begin
          tab2[2,7]:=random(6);
        end;
      end
      else
      begin
        tab2[2,7]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,7]:=random(6);
        while(tab2[3,7]=ban1)or(tab2[3,7]=ban2)or(tab2[3,7]=tab2[1,7])or(tab2[3,7]=tab2[2,7])or(tab2[3,7]=case4)do
        begin
          tab2[3,7]:=random(6);
        end;
      end
      else
      begin
        tab2[3,7]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,7]:=random(6);
        while(tab2[4,7]=ban1)or(tab2[4,7]=ban2)or(tab2[4,7]=tab2[1,7])or(tab2[4,7]=tab2[2,7])or(tab2[4,7]=tab2[3,7])do
        begin
          tab2[4,7]:=random(6);
        end;
      end
      else
      begin
        tab2[4,7]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | | ',tab2[6,2],' | ',tab2[5,2],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,3],'    |    ',tab2[2,3],'    |    ',tab2[3,3],'    |    ',tab2[4,3],'    | | ',tab2[6,3],' | ',tab2[5,3],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,4],'    |    ',tab2[2,4],'    |    ',tab2[3,4],'    |    ',tab2[4,4],'    | | ',tab2[6,4],' | ',tab2[5,4],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,5],'    |    ',tab2[2,5],'    |    ',tab2[3,5],'    |    ',tab2[4,5],'    | | ',tab2[6,5],' | ',tab2[5,5],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,6],'    |    ',tab2[2,6],'    |    ',tab2[3,6],'    |    ',tab2[4,6],'    | | ',tab2[6,6],' | ',tab2[5,6],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,7],'    |    ',tab2[2,7],'    |    ',tab2[3,7],'    |    ',tab2[4,7],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,7],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,7]:=tab2[5,7]+1;
        write('                         La premiere valeur(',tab2[1,7],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,7]:=tab2[6,7]+1;
          case1:=tab2[1,7];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,7];
        end
        else
        begin
          ban1:=tab2[1,7];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,7],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,7]:=tab2[5,7]+1;
        write('                         La deuxieme valeur(',tab2[2,7],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,7]:=tab2[6,7]+1;
          case2:=tab2[2,7];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,7];
        end
        else
        begin
          ban1:=tab2[2,7];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,7],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,7]:=tab2[5,7]+1;
        write('                         La troisieme valeur(',tab2[3,7],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,7]:=tab2[6,7]+1;
          case3:=tab2[3,7];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,7];
        end
        else
        begin
          ban1:=tab2[3,7];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,7],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,7]:=tab2[5,7]+1;
        write('                         La quatrieme valeur(',tab2[4,7],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,7]:=tab2[6,7]+1;
          case4:=tab2[4,7];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,7];
        end
        else
        begin
          ban1:=tab2[4,7];
        end;
      end;
    end;



    //============================================================================================================================================================================================

    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,8]:=random(6);
        while(tab2[1,8]=ban1)or(tab2[1,8]=ban2)or(tab2[1,8]=case2)or(tab2[1,8]=case3)or(tab2[1,8]=case4)do
        begin
          tab2[1,8]:=random(6);
        end;
      end
      else
      begin
        tab2[1,8]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,8]:=random(6);
        while(tab2[2,8]=ban1)or(tab2[2,8]=ban2)or(tab2[2,8]=tab2[1,8])or(tab2[2,8]=case3)or(tab2[2,8]=case4)do
        begin
          tab2[2,8]:=random(6);
        end;
      end
      else
      begin
        tab2[2,8]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,8]:=random(6);
        while(tab2[3,8]=ban1)or(tab2[3,8]=ban2)or(tab2[3,8]=tab2[1,8])or(tab2[3,8]=tab2[2,8])or(tab2[3,8]=case4)do
        begin
          tab2[3,8]:=random(6);
        end;
      end
      else
      begin
        tab2[3,8]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,8]:=random(6);
        while(tab2[4,8]=ban1)or(tab2[4,8]=ban2)or(tab2[4,8]=tab2[1,8])or(tab2[4,8]=tab2[2,8])or(tab2[4,8]=tab2[3,8])do
        begin
          tab2[4,8]:=random(6);
        end;
      end
      else
      begin
        tab2[4,8]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | | ',tab2[6,2],' | ',tab2[5,2],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,3],'    |    ',tab2[2,3],'    |    ',tab2[3,3],'    |    ',tab2[4,3],'    | | ',tab2[6,3],' | ',tab2[5,3],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,4],'    |    ',tab2[2,4],'    |    ',tab2[3,4],'    |    ',tab2[4,4],'    | | ',tab2[6,4],' | ',tab2[5,4],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,5],'    |    ',tab2[2,5],'    |    ',tab2[3,5],'    |    ',tab2[4,5],'    | | ',tab2[6,5],' | ',tab2[5,5],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,6],'    |    ',tab2[2,6],'    |    ',tab2[3,6],'    |    ',tab2[4,6],'    | | ',tab2[6,6],' | ',tab2[5,6],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,7],'    |    ',tab2[2,7],'    |    ',tab2[3,7],'    |    ',tab2[4,7],'    | | ',tab2[6,7],' | ',tab2[5,7],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,8],'    |    ',tab2[2,8],'    |    ',tab2[3,8],'    |    ',tab2[4,8],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,8],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,8]:=tab2[5,8]+1;
        write('                         La premiere valeur(',tab2[1,8],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,8]:=tab2[6,8]+1;
          case1:=tab2[1,8];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,8];
        end
        else
        begin
          ban1:=tab2[1,8];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,8],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,8]:=tab2[5,8]+1;
        write('                         La deuxieme valeur(',tab2[2,8],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,8]:=tab2[6,8]+1;
          case2:=tab2[2,8];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,8];
        end
        else
        begin
          ban1:=tab2[2,8];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,8],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,8]:=tab2[5,8]+1;
        write('                         La troisieme valeur(',tab2[3,8],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,8]:=tab2[6,8]+1;
          case3:=tab2[3,8];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,8];
        end
        else
        begin
          ban1:=tab2[3,8];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,8],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,8]:=tab2[5,8]+1;
        write('                         La quatrieme valeur(',tab2[4,8],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,8]:=tab2[6,8]+1;
          case4:=tab2[4,8];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,8];
        end
        else
        begin
          ban1:=tab2[4,8];
        end;
      end;
    end;






    //============================================================================================================================================================================================

    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,9]:=random(6);
        while(tab2[1,9]=ban1)or(tab2[1,9]=ban2)or(tab2[1,9]=case2)or(tab2[1,9]=case3)or(tab2[1,9]=case4)do
        begin
          tab2[1,9]:=random(6);
        end;
      end
      else
      begin
        tab2[1,9]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,9]:=random(6);
        while(tab2[2,9]=ban1)or(tab2[2,9]=ban2)or(tab2[2,9]=tab2[1,9])or(tab2[2,9]=case3)or(tab2[2,9]=case4)do
        begin
          tab2[2,9]:=random(6);
        end;
      end
      else
      begin
        tab2[2,9]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,9]:=random(6);
        while(tab2[3,9]=ban1)or(tab2[3,9]=ban2)or(tab2[3,9]=tab2[1,9])or(tab2[3,9]=tab2[2,9])or(tab2[3,9]=case4)do
        begin
          tab2[3,9]:=random(6);
        end;
      end
      else
      begin
        tab2[3,9]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,9]:=random(6);
        while(tab2[4,9]=ban1)or(tab2[4,9]=ban2)or(tab2[4,9]=tab2[1,9])or(tab2[4,9]=tab2[2,9])or(tab2[4,9]=tab2[3,9])do
        begin
          tab2[4,9]:=random(6);
        end;
      end
      else
      begin
        tab2[4,9]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | | ',tab2[6,2],' | ',tab2[5,2],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,3],'    |    ',tab2[2,3],'    |    ',tab2[3,3],'    |    ',tab2[4,3],'    | | ',tab2[6,3],' | ',tab2[5,3],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,4],'    |    ',tab2[2,4],'    |    ',tab2[3,4],'    |    ',tab2[4,4],'    | | ',tab2[6,4],' | ',tab2[5,4],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,5],'    |    ',tab2[2,5],'    |    ',tab2[3,5],'    |    ',tab2[4,5],'    | | ',tab2[6,5],' | ',tab2[5,5],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,6],'    |    ',tab2[2,6],'    |    ',tab2[3,6],'    |    ',tab2[4,6],'    | | ',tab2[6,6],' | ',tab2[5,6],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,7],'    |    ',tab2[2,7],'    |    ',tab2[3,7],'    |    ',tab2[4,7],'    | | ',tab2[6,7],' | ',tab2[5,7],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,8],'    |    ',tab2[2,8],'    |    ',tab2[3,8],'    |    ',tab2[4,8],'    | | ',tab2[6,8],' | ',tab2[5,8],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,9],'    |    ',tab2[2,9],'    |    ',tab2[3,9],'    |    ',tab2[4,9],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |         |         |         |         | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,9],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,9]:=tab2[5,9]+1;
        write('                         La premiere valeur(',tab2[1,9],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,9]:=tab2[6,9]+1;
          case1:=tab2[1,9];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,9];
        end
        else
        begin
          ban1:=tab2[1,9];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,9],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,9]:=tab2[5,9]+1;
        write('                         La deuxieme valeur(',tab2[2,9],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,9]:=tab2[6,9]+1;
          case2:=tab2[2,9];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,9];
        end
        else
        begin
          ban1:=tab2[2,9];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,9],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,9]:=tab2[5,9]+1;
        write('                         La troisieme valeur(',tab2[3,9],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,9]:=tab2[6,9]+1;
          case3:=tab2[3,9];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,9];
        end
        else
        begin
          ban1:=tab2[3,9];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,9],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,9]:=tab2[5,9]+1;
        write('                         La quatrieme valeur(',tab2[4,9],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,9]:=tab2[6,9]+1;
          case4:=tab2[4,9];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,9];
        end
        else
        begin
          ban1:=tab2[4,9];
        end;
      end;
    end;





    //============================================================================================================================================================================================

    if(case1=-1)or(case2=-1)or(case3=-1)or(case4=-1)then
    begin
      if(case1=-1)then
      begin
        tab2[1,10]:=random(6);
        while(tab2[1,10]=ban1)or(tab2[1,10]=ban2)or(tab2[1,10]=case2)or(tab2[1,10]=case3)or(tab2[1,10]=case4)do
        begin
          tab2[1,10]:=random(6);
        end;
      end
      else
      begin
        tab2[1,10]:=case1;
      end;



      if(case2=-1)then
      begin
        tab2[2,10]:=random(6);
        while(tab2[2,10]=ban1)or(tab2[2,10]=ban2)or(tab2[2,10]=tab2[1,10])or(tab2[2,10]=case3)or(tab2[2,10]=case4)do
        begin
          tab2[2,10]:=random(6);
        end;
      end
      else
      begin
        tab2[2,10]:=case2;
      end;



      if(case3=-1)then
      begin
        tab2[3,10]:=random(6);
        while(tab2[3,10]=ban1)or(tab2[3,10]=ban2)or(tab2[3,10]=tab2[1,10])or(tab2[3,10]=tab2[2,10])or(tab2[3,10]=case4)do
        begin
          tab2[3,10]:=random(6);
        end;
      end
      else
      begin
        tab2[3,10]:=case3;
      end;



     if(case4=-1)then
     begin
        tab2[4,10]:=random(6);
        while(tab2[4,10]=ban1)or(tab2[4,10]=ban2)or(tab2[4,10]=tab2[1,10])or(tab2[4,10]=tab2[2,10])or(tab2[4,10]=tab2[3,10])do
        begin
          tab2[4,10]:=random(6);
        end;
      end
      else
      begin
        tab2[4,10]:=case4;
      end;


      clrscr;
      nbre_coup := nbre_coup + 1;
      writeln('                                                       MASTERMIND');
      writeln('                                                  (Vous etes le codeur)');
      writeln;
      writeln;
      writeln('                                  ---------------------------------------------------- ');
      writeln('                                  |    ',tab2[1,1],'    |    ',tab2[2,1],'    |    ',tab2[3,1],'    |    ',tab2[4,1],'    | | ',tab2[6,1],' | ',tab2[5,1],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,2],'    |    ',tab2[2,2],'    |    ',tab2[3,2],'    |    ',tab2[4,2],'    | | ',tab2[6,2],' | ',tab2[5,2],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,3],'    |    ',tab2[2,3],'    |    ',tab2[3,3],'    |    ',tab2[4,3],'    | | ',tab2[6,3],' | ',tab2[5,3],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,4],'    |    ',tab2[2,4],'    |    ',tab2[3,4],'    |    ',tab2[4,4],'    | | ',tab2[6,4],' | ',tab2[5,4],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,5],'    |    ',tab2[2,5],'    |    ',tab2[3,5],'    |    ',tab2[4,5],'    | | ',tab2[6,5],' | ',tab2[5,5],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,6],'    |    ',tab2[2,6],'    |    ',tab2[3,6],'    |    ',tab2[4,6],'    | | ',tab2[6,6],' | ',tab2[5,6],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,7],'    |    ',tab2[2,7],'    |    ',tab2[3,7],'    |    ',tab2[4,7],'    | | ',tab2[6,7],' | ',tab2[5,7],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,8],'    |    ',tab2[2,8],'    |    ',tab2[3,8],'    |    ',tab2[4,8],'    | | ',tab2[6,8],' | ',tab2[5,8],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,9],'    |    ',tab2[2,9],'    |    ',tab2[3,9],'    |    ',tab2[4,9],'    | | ',tab2[6,9],' | ',tab2[5,9],' ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tab2[1,10],'    |    ',tab2[2,10],'    |    ',tab2[3,10],'    |    ',tab2[4,10],'    | |   |   ||     ');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |--------------------------------------------------|');
      writeln('                                  |    ',tm[1],'    |    ',tm[2],'    |    ',tm[3],'    |    ',tm[4],'    | |       ||     ');
      writeln('                                  ----------------------------------------------------');
      write('                         La premiere valeur(',tab2[1,10],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,10]:=tab2[5,10]+1;
        write('                         La premiere valeur(',tab2[1,10],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,10]:=tab2[6,10]+1;
          case1:=tab2[1,10];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[1,10];
        end
        else
        begin
          ban1:=tab2[1,10];
        end;
      end;

      write('                         La deuxieme valeur(',tab2[2,10],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,10]:=tab2[5,10]+1;
        write('                         La deuxieme valeur(',tab2[2,10],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,10]:=tab2[6,10]+1;
          case2:=tab2[2,10];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[2,10];
        end
        else
        begin
          ban1:=tab2[2,10];
        end;
      end;
      write('                         La troisieme valeur(',tab2[3,10],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,10]:=tab2[5,10]+1;
        write('                         La troisieme valeur(',tab2[3,10],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,10]:=tab2[6,10]+1;
          case3:=tab2[3,10];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[3,10];
        end
        else
        begin
          ban1:=tab2[3,10];
        end;
      end;
      write('                         La quatrieme valeur(',tab2[4,10],') est-elle comprise dans votre code? 1: oui 2: non  ->');
      readln(rep);
      while(rep<>1)and(rep<>2)do
      begin
        readln(rep);
      end;
      if(rep=1)then
      begin
        tab2[5,10]:=tab2[5,10]+1;
        write('                         La quatrieme valeur(',tab2[4,10],') est-elle a la bonne position? 1: oui 2: non  ->');
        readln(rep);
        while(rep<>1)and(rep<>2)do
        begin
          readln(rep);
        end;
        if(rep=1)then
        begin
          tab2[6,10]:=tab2[6,10]+1;
          case4:=tab2[4,10];
        end;
      end
      else
      begin
        if(ban1<>-1)then
        begin
          ban2:=tab2[4,10];
        end
        else
        begin
          ban1:=tab2[4,10];
        end;
      end;
    end;
    clrscr;
    if(case1<>-1)and(case2<>-1)and(case3<>-1)and(case4<>-1)then
    begin
      if (case1<>tm[1]) or (case2<>tm[2]) or (case3<>tm[3]) or (case4<>tm[4]) then
      begin
        writeln('========================================================================================================================');
        writeln;
        writeln;
        writeln;
        writeln('                                                    PARTIE TERMINEE');
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln('                                     Vous avez trichez ! Vous etes pas gentil !!!');
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln('                                Tapez 1 pour refaire une partie ou tapez 2 pour quitter ');
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        write('========================================================================================================================');
        readln(refaire);
        while (refaire<>1) and (refaire<>2) do
        begin
          readln(refaire);
        end;
        if (refaire = 1) then
        begin
          role := 0;
        end;
        if (refaire = 2) then
        begin
          jouer := 1;
        end;




      end
      else
      begin

        writeln('========================================================================================================================');
        writeln;
        writeln;
        writeln;
        writeln('                                                    PARTIE TERMINEE');
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln('                                        L''IA a trouve votre code en ', nbre_coup:2,' coup(s).');
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln('                                       Tapez 1 pour refaire une partie ou tapez 2 pour quitter ');
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        writeln;
        write('========================================================================================================================');
        readln(refaire);
        while (refaire<>1) and (refaire<>2) do
        begin
          readln(refaire);
        end;
        if (refaire = 1) then
        begin
          role := 0;
        end;
        if (refaire = 2) then
        begin
          jouer := 1;
        end;
      end;
    end
    else
    begin
      writeln('========================================================================================================================');
      writeln;
      writeln;
      writeln;
      writeln('                                                    PARTIE TERMINEE');
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln('                                            L''IA n''a pas trouve votre code.');
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln('                                   Tapez 1 pour refaire une partie ou tapez 2 pour quitter ');
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      write('========================================================================================================================');
      readln(refaire);
        while (refaire<>1) and (refaire<>2) do
        begin
          readln(refaire);
        end;
        if (refaire = 1) then
        begin
          role := 0;
        end;
        if (refaire = 2) then
        begin
          jouer := 1;
        end;
    end;
  end;

                                      // DECODEUR
if (role = 2) then
begin
  decodeur1 := 0;



  while (decodeur1 = 0) do
  begin

    win := 0;
    for i := 1 to 11 do
        begin
          for j := 1 to 6 do
              begin
                TM2[i,j] := '' ;
              end;
        end;
                                                     //   DECODEUR
    writeln('========================================================================================================================');
    writeln;
    writeln;
    writeln('                                                      RAPPEL');
    writeln;
    writeln;
    writeln('         Vous etes le decodeur. Votre adversaire va choisir un code a 4 chiffres de 0 a 5 (0, 1, 2, 3, 4, 5 ).');
    writeln('            Vous devrez essayer de deviner son code en mettant a chaque tentative un code a 4 chiffres.');
    writeln('                        L''adversaire vous repondra par des chiffres dans deux colonnes a droite.');
    writeln('                 Le chiffre a droite signifie qu''un chiffre est juste et le chiffre a gauche signifique');
    writeln('                                       qu''un chiffre est juste et bien place.');
    writeln('        Il n''y a pas de chiffre qui se repete donc inutile de mettre un code avec plusieurs fois le meme chiffre.');
    writeln('                                     Si vous le faites, cela vous induira en erreur.');
    writeln('                   Un chiffre juste et bien place est considere comme "bien place et juste" et "juste".');
    writeln;
    writeln;
    writeln('                                         Tapez <ENTREE> pour continuer');
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln;
    writeln('========================================================================================================================');
    readln();



    // Code de l'IA

    for j := 1 to 4 do
        begin
          TM2[11,j] := '?';
        end;


    for j := 1 to 4 do
        begin
          code1 := random(6);
          if (code1 = 0) then
            begin
              TM2[1,j] := '0';
            end;
          if (code1 = 1) then
            begin
              TM2[1,j] := '1';
            end;
          if (code1 = 2) then
            begin
              TM2[1,j] := '2';
            end;
          if (code1 = 3) then
            begin
              TM2[1,j] := '3';
            end;
          if (code1 = 4) then
            begin
              TM2[1,j] := '4';
            end;
          if (code1 = 5) then
            begin
              TM2[1,j] := '5';
            end;
        end;

    double1 := 0;
    if (TM2[1,2] = TM2[1,1]) then
      begin
        double1 := 1;
      end;

    while (double1 = 1) do
          begin
            code2 := random(6);
            if (code2 = 0) then
              begin
                TM2[1,2] := '0';
              end;
            if (code2 = 1) then
              begin
                TM2[1,2] := '1';
              end;
            if (code2 = 2) then
              begin
                TM2[1,2] := '2';
              end;
            if (code2 = 3) then
              begin
                TM2[1,2] := '3';
              end;
            if (code2 = 4) then
              begin
                TM2[1,2] := '4';
              end;
            if (code2 = 5) then
              begin
                TM2[1,2] := '5';
              end;
            if (TM2[1,2] <> TM2[1,1]) then
              begin
                if (code2 = 0) then
                  begin
                    TM2[1,2] := '0';
                  end;
                if (code2 = 1) then
                  begin
                    TM2[1,2] := '1';
                  end;
                if (code2 = 2) then
                  begin
                    TM2[1,2] := '2';
                  end;
                if (code2 = 3) then
                  begin
                    TM2[1,2] := '3';
                  end;
                if (code2 = 4) then
                  begin
                    TM2[1,2] := '4';
                  end;
                if (code2 = 5) then
                  begin
                    TM2[1,2] := '5';
                  end;
                double1 := 0;
              end;
          end;

    double2 := 0;
    if ((TM2[1,3] = TM2[1,2]) or (TM2[1,3] = TM2[1,1])) then
      begin
        double2 := 1;
      end;

    while (double2 = 1) do
          begin
            code3 := random(6);
            if (code3 = 0) then
              begin
                TM2[1,3] := '0';
              end;
            if (code3 = 1) then
              begin
                TM2[1,3] := '1';
              end;
            if (code3 = 2) then
              begin
                TM2[1,3] := '2';
              end;
            if (code3 = 3) then
              begin
                TM2[1,3] := '3';
              end;
            if (code3 = 4) then
              begin
                TM2[1,3] := '4';
              end;
            if (code3 = 5) then
              begin
                TM2[1,3] := '5';
              end;

            if ((TM2[1,3] <> TM2[1,2]) and (TM2[1,3] <> TM2[1,1])) then
              begin
                if (code3 = 0) then
                  begin
                    TM2[1,3] := '0';
                  end;
                if (code3 = 1) then
                  begin
                    TM2[1,3] := '1';
                  end;
                if (code3 = 2) then
                  begin
                    TM2[1,3] := '2';
                  end;
                if (code3 = 3) then
                  begin
                    TM2[1,3] := '3';
                  end;
                if (code3 = 4) then
                  begin
                    TM2[1,3] := '4';
                  end;
                if (code3 = 5) then
                  begin
                    TM2[1,3] := '5';
                  end;
                double2 := 0;
              end;
          end;

    double3 := 0;
    if ((TM2[1,4] = TM2[1,3]) or (TM2[1,4] = TM2[1,2]) or (TM2[1,4] = TM2[1,1])) then
      begin
        double3 := 1;
      end;

    while (double3 = 1) do
          begin
            code4 := random(6);
            if (code4 = 0) then
              begin
                TM2[1,4] := '0';
              end;
            if (code4 = 1) then
              begin
                TM2[1,4] := '1';
              end;
            if (code4 = 2) then
              begin
                TM2[1,4] := '2';
              end;
            if (code4 = 3) then
              begin
                TM2[1,4] := '3';
              end;
            if (code4 = 4) then
              begin
                TM2[1,4] := '4';
              end;
            if (code4 = 5) then
              begin
                TM2[1,4] := '5';
              end;
            if ((TM2[1,4] <> TM2[1,3]) and (TM2[1,4] <> TM2[1,2]) and (TM2[1,4] <> TM2[1,1])) then
              begin
                if (code4 = 0) then
                  begin
                    TM2[1,4] := '0';
                  end;
                if (code4 = 1) then
                  begin
                    TM2[1,4] := '1';
                  end;
                if (code4 = 2) then
                  begin
                    TM2[1,4] := '2';
                  end;
                if (code4 = 3) then
                  begin
                    TM2[1,4] := '3';
                  end;
                if (code4 = 4) then
                  begin
                    TM2[1,4] := '4';
                  end;
                if (code4 = 5) then
                  begin
                    TM2[1,4] := '5';
                  end;
                double3 := 0;
              end;
          end;

    // Fin code de l'IA

    // 1er code :

    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;

    writeln;
    write('Choisissez le premier code de gauche a droite et tapez entree apres chaque chiffre (0 a 5) : ');
    for j := 1 to 4 do
        begin
          readln(choix);
          while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
          if (choix = 0) then
             begin
               TM2[11,j] := '0';
             end;
          if (choix = 1) then
             begin
               TM2[11,j] := '1';
             end;
          if (choix= 2) then
             begin
               TM2[11,j] := '2';
             end;
          if (choix = 3) then
             begin
               TM2[11,j] := '3';
             end;
          if (choix = 4) then
             begin
               TM2[11,j] := '4';
             end;
          if (choix = 5) then
             begin
               TM2[11,j] := '5';
             end;
        end;


    bon := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,j] = TM2[11,j]) then
             begin
               bon := bon + 1;
             end;
        end;
    if (bon = 0) then
       begin
         TM2[11,5] := '0';
       end;
    if (bon = 1) then
       begin
         TM2[11,5] := '1';
       end;
    if (bon = 2) then
       begin
         TM2[11,5] := '2';
       end;
    if (bon = 3) then
       begin
         TM2[11,5] := '3';
       end;
    if (bon = 4) then
       begin
         TM2[11,5] := '4';
         win := 1;
       end;

    tot_juste := 0;
    juste1 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,1] = TM2[11,j]) then
            begin
              juste1 := juste1 + 1;
            end;
        end;
    juste2 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,2] = TM2[11,j]) then
            begin
              juste2 := juste2 + 1;
            end;
        end;
    juste3 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,3] = TM2[11,j]) then
            begin
              juste3 := juste3 + 1;
            end;
        end;
    juste4 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,4] = TM2[11,j]) then
            begin
              juste4 := juste4 + 1;
            end;
        end;

    tot_juste := juste1 + juste2 + juste3 + juste4;

    if (tot_juste = 0) then
      begin
        TM2[11,6] := '0';
      end;
    if (tot_juste = 1) then
      begin
        TM2[11,6] := '1';
      end;
    if (tot_juste = 2) then
      begin
        TM2[11,6] := '2';
      end;
    if (tot_juste = 3) then
      begin
        TM2[11,6] := '3';
      end;
    if (tot_juste = 4) then
      begin
        TM2[11,6] := '4';
      end;


    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;
    decodeur2 := 0;
    if (win = 1) then
       begin
         writeln;
         writeln('C''est gagne vous avez trouve son code du premier coup ! ');
         writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
         writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
         readln(decodeur2);
         while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
         if (decodeur2 = 1) then
             begin
               role := 0;
               decodeur1 := 1;
             end;
       end;

    if (decodeur2 = 2) then
       begin
         decodeur1 := 1;
         jouer := 1;
       end;

                                     // 2)
  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
    for j := 1 to 4 do
        begin
          TM2[10,j] := '?';
        end;
    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;


    writeln;
    write('Choisissez le deuxieme code de gauche a droite et tapez entree apres chaque chiffre : ');
    for j := 1 to 4 do
        begin
          readln(choix);
          while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
          if (choix = 0) then
             begin
               TM2[10,j] := '0';
             end;
          if (choix = 1) then
             begin
               TM2[10,j] := '1';
             end;
          if (choix = 2) then
             begin
               TM2[10,j] := '2';
             end;
          if (choix = 3) then
             begin
               TM2[10,j] := '3';
             end;
          if (choix = 4) then
             begin
               TM2[10,j] := '4';
             end;
          if (choix = 5) then
             begin
               TM2[10,j] := '5';
             end;
        end;

    bon := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,j] = TM2[10,j]) then
             begin
               bon := bon + 1;
             end;
        end;

    if (bon = 0) then
       begin
         TM2[10,5] := '0';
       end;
    if (bon = 1) then
       begin
         TM2[10,5] := '1';
       end;
    if (bon = 2) then
       begin
         TM2[10,5] := '2';
       end;
    if (bon = 3) then
       begin
         TM2[10,5] := '3';
       end;
    if (bon = 4) then
       begin
         TM2[10,5] := '4';
         win := 1;
       end;

    juste1 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,1] = TM2[10,j]) then
            begin
              juste1 := juste1 + 1;
            end;
        end;
    juste2 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,2] = TM2[10,j]) then
            begin
              juste2 := juste2 + 1;
            end;
        end;
    juste3 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,3] = TM2[10,j]) then
            begin
              juste3 := juste3 + 1;
            end;
        end;
    juste4 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,4] = TM2[10,j]) then
            begin
              juste4 := juste4 + 1;
            end;
        end;

    tot_juste := 0;
    tot_juste := juste1 + juste2 + juste3 + juste4;
    if (tot_juste = 0) then
      begin
        TM2[10,6] := '0';
      end;
    if (tot_juste = 1) then
      begin
        TM2[10,6] := '1';
      end;
    if (tot_juste = 2) then
      begin
        TM2[10,6] := '2';
      end;
    if (tot_juste = 3) then
      begin
        TM2[10,6] := '3';
      end;
    if (tot_juste = 4) then
      begin
        TM2[10,6] := '4';
      end;

    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;

    decodeur2 := 0;
    if (win = 1) then
       begin
         writeln;
         writeln('C''est gagne vous avez trouve son code du deuxieme coup ! ');
         writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
         writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
         readln(decodeur2);
         while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
         if (decodeur2 = 1) then
             begin
               role := 0;
               decodeur1 := 1;
             end;
       end;

    if (decodeur2 = 2) then
       begin
         decodeur1 := 1;
         jouer := 1;
       end;
  end;
                                                 // 3)
  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
    for j := 1 to 4 do
        begin
          TM2[9,j] := '?';
        end;
    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;


    writeln;
    write('Choisissez le troisieme code de gauche a droite et tapez entree apres chaque chiffre : ');
    for j := 1 to 4 do
        begin
          readln(choix);
          while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
          if (choix = 0) then
             begin
               TM2[9,j] := '0';
             end;
          if (choix = 1) then
             begin
               TM2[9,j] := '1';
             end;
          if (choix= 2) then
             begin
               TM2[9,j] := '2';
             end;
          if (choix = 3) then
             begin
               TM2[9,j] := '3';
             end;
          if (choix = 4) then
             begin
               TM2[9,j] := '4';
             end;
          if (choix = 5) then
             begin
               TM2[9,j] := '5';
             end;
        end;

    bon := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,j] = TM2[9,j]) then
             begin
               bon := bon + 1;
             end;
        end;

    if (bon = 0) then
       begin
         TM2[9,5] := '0';
       end;
    if (bon = 1) then
       begin
         TM2[9,5] := '1';
       end;
    if (bon = 2) then
       begin
         TM2[9,5] := '2';
       end;
    if (bon = 3) then
       begin
         TM2[9,5] := '3';
       end;
    if (bon = 4) then
       begin
         TM2[9,5] := '4';
         win := 1;
       end;

    juste1 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,1] = TM2[9,j]) then
            begin
              juste1 := juste1 + 1;
            end;
        end;
    juste2 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,2] = TM2[9,j]) then
            begin
              juste2 := juste2 + 1;
            end;
        end;
    juste3 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,3] = TM2[9,j]) then
            begin
              juste3 := juste3 + 1;
            end;
        end;
    juste4 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,4] = TM2[9,j]) then
            begin
              juste4 := juste4 + 1;
            end;
        end;

    tot_juste := 0;
    tot_juste := juste1 + juste2 + juste3 + juste4;
    if (tot_juste = 0) then
      begin
        TM2[9,6] := '0';
      end;
    if (tot_juste = 1) then
      begin
        TM2[9,6] := '1';
      end;
    if (tot_juste = 2) then
      begin
        TM2[9,6] := '2';
      end;
    if (tot_juste = 3) then
      begin
        TM2[9,6] := '3';
      end;
    if (tot_juste = 4) then
      begin
        TM2[9,6] := '4';
      end;

    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;

    decodeur2 := 0;
    if (win = 1) then
       begin
         writeln;
         writeln('C''est gagne vous avez trouve son code du troisieme coup ! ');
         writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
         writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
         readln(decodeur2);
         while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
         if (decodeur2 = 1) then
             begin
               role := 0;
               decodeur1 := 1;
             end;
       end;

    if (decodeur2 = 2) then
       begin
         decodeur1 := 1;
         jouer := 1;
       end;
  end;
                                                    // 4)
  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
    for j := 1 to 4 do
        begin
          TM2[8,j] := '?';
        end;
    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;


    writeln;
    write('Choisissez le quatrieme code de gauche a droite et tapez entree apres chaque chiffre : ');
    for j := 1 to 4 do
        begin
          readln(choix);
          while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
          if (choix = 0) then
             begin
               TM2[8,j] := '0';
             end;
          if (choix = 1) then
             begin
               TM2[8,j] := '1';
             end;
          if (choix= 2) then
             begin
               TM2[8,j] := '2';
             end;
          if (choix = 3) then
             begin
               TM2[8,j] := '3';
             end;
          if (choix = 4) then
             begin
               TM2[8,j] := '4';
             end;
          if (choix = 5) then
             begin
               TM2[8,j] := '5';
             end;
        end;

    bon := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,j] = TM2[8,j]) then
             begin
               bon := bon + 1;
             end;
        end;

    if (bon = 0) then
       begin
         TM2[8,5] := '0';
       end;
    if (bon = 1) then
       begin
         TM2[8,5] := '1';
       end;
    if (bon = 2) then
       begin
         TM2[8,5] := '2';
       end;
    if (bon = 3) then
       begin
         TM2[8,5] := '3';
       end;
    if (bon = 4) then
       begin
         TM2[8,5] := '4';
         win := 1;
       end;

    juste1 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,1] = TM2[8,j]) then
            begin
              juste1 := juste1 + 1;
            end;
        end;
    juste2 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,2] = TM2[8,j]) then
            begin
              juste2 := juste2 + 1;
            end;
        end;
    juste3 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,3] = TM2[8,j]) then
            begin
              juste3 := juste3 + 1;
            end;
        end;
    juste4 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,4] = TM2[8,j]) then
            begin
              juste4 := juste4 + 1;
            end;
        end;

    tot_juste := 0;
    tot_juste := juste1 + juste2 + juste3 + juste4;
    if (tot_juste = 0) then
      begin
        TM2[8,6] := '0';
      end;
    if (tot_juste = 1) then
      begin
        TM2[8,6] := '1';
      end;
    if (tot_juste = 2) then
      begin
        TM2[8,6] := '2';
      end;
    if (tot_juste = 3) then
      begin
        TM2[8,6] := '3';
      end;
    if (tot_juste = 4) then
      begin
        TM2[8,6] := '4';
      end;

    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;

    decodeur2 := 0;
    if (win = 1) then
       begin
         writeln;
         writeln('C''est gagne vous avez trouve son code du quatrieme coup ! ');
         writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
         writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
         readln(decodeur2);
         while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
         if (decodeur2 = 1) then
             begin
               role := 0;
               decodeur1 := 1;
             end;
       end;

    if (decodeur2 = 2) then
       begin
         decodeur1 := 1;
         jouer := 1;
       end;
  end;
                                                    // 5)
  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
    for j := 1 to 4 do
        begin
          TM2[7,j] := '?';
        end;
    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;


    writeln;
    write('Choisissez le cinquieme code de gauche a droite et tapez entree apres chaque chiffre : ');
    for j := 1 to 4 do
        begin
          readln(choix);
          while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
          if (choix = 0) then
             begin
               TM2[7,j] := '0';
             end;
          if (choix = 1) then
             begin
               TM2[7,j] := '1';
             end;
          if (choix= 2) then
             begin
               TM2[7,j] := '2';
             end;
          if (choix = 3) then
             begin
               TM2[7,j] := '3';
             end;
          if (choix = 4) then
             begin
               TM2[7,j] := '4';
             end;
          if (choix = 5) then
             begin
               TM2[7,j] := '5';
             end;
        end;

    bon := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,j] = TM2[7,j]) then
             begin
               bon := bon + 1;
             end;
        end;

    if (bon = 0) then
       begin
         TM2[7,5] := '0';
       end;
    if (bon = 1) then
       begin
         TM2[7,5] := '1';
       end;
    if (bon = 2) then
       begin
         TM2[7,5] := '2';
       end;
    if (bon = 3) then
       begin
         TM2[7,5] := '3';
       end;
    if (bon = 4) then
       begin
         TM2[7,5] := '4';
         win := 1;
       end;

    juste1 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,1] = TM2[7,j]) then
            begin
              juste1 := juste1 + 1;
            end;
        end;
    juste2 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,2] = TM2[7,j]) then
            begin
              juste2 := juste2 + 1;
            end;
        end;
    juste3 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,3] = TM2[7,j]) then
            begin
              juste3 := juste3 + 1;
            end;
        end;
    juste4 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,4] = TM2[7,j]) then
            begin
              juste4 := juste4 + 1;
            end;
        end;

    tot_juste := 0;
    tot_juste := juste1 + juste2 + juste3 + juste4;
    if (tot_juste = 0) then
      begin
        TM2[7,6] := '0';
      end;
    if (tot_juste = 1) then
      begin
        TM2[7,6] := '1';
      end;
    if (tot_juste = 2) then
      begin
        TM2[7,6] := '2';
      end;
    if (tot_juste = 3) then
      begin
        TM2[7,6] := '3';
      end;
    if (tot_juste = 4) then
      begin
        TM2[7,6] := '4';
      end;

    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;

    decodeur2 := 0;
    if (win = 1) then
       begin
         writeln;
         writeln('C''est gagne vous avez trouve son code du cinquieme coup ! ');
         writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
         writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
         readln(decodeur2);
         while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
         if (decodeur2 = 1) then
             begin
               role := 0;
               decodeur1 := 1;
             end;
       end;

    if ((decodeur2 = 2) and (decodeur2 <> 1)) then
       begin
         decodeur1 := 1;
         jouer := 1;
       end;
  end;
                               // 6))
  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
    for j := 1 to 4 do
        begin
          TM2[6,j] := '?';
        end;
    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;


    writeln;
    write('Choisissez le sixieme code de gauche a droite et tapez entree apres chaque chiffre : ');
    for j := 1 to 4 do
        begin
          readln(choix);
          while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
          if (choix = 0) then
             begin
               TM2[6,j] := '0';
             end;
          if (choix = 1) then
             begin
               TM2[6,j] := '1';
             end;
          if (choix= 2) then
             begin
               TM2[6,j] := '2';
             end;
          if (choix = 3) then
             begin
               TM2[6,j] := '3';
             end;
          if (choix = 4) then
             begin
               TM2[6,j] := '4';
             end;
          if (choix = 5) then
             begin
               TM2[6,j] := '5';
             end;
        end;

    bon := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,j] = TM2[6,j]) then
             begin
               bon := bon + 1;
             end;
        end;

    if (bon = 0) then
       begin
         TM2[6,5] := '0';
       end;
    if (bon = 1) then
       begin
         TM2[6,5] := '1';
       end;
    if (bon = 2) then
       begin
         TM2[6,5] := '2';
       end;
    if (bon = 3) then
       begin
         TM2[6,5] := '3';
       end;
    if (bon = 4) then
       begin
         TM2[6,5] := '4';
         win := 1;
       end;

    juste1 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,1] = TM2[6,j]) then
            begin
              juste1 := juste1 + 1;
            end;
        end;
    juste2 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,2] = TM2[6,j]) then
            begin
              juste2 := juste2 + 1;
            end;
        end;
    juste3 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,3] = TM2[6,j]) then
            begin
              juste3 := juste3 + 1;
            end;
        end;
    juste4 := 0;
    for j := 1 to 4 do
        begin
          if (TM2[1,4] = TM2[6,j]) then
            begin
              juste4 := juste4 + 1;
            end;
        end;

    tot_juste := 0;
    tot_juste := juste1 + juste2 + juste3 + juste4;
    if (tot_juste = 0) then
      begin
        TM2[6,6] := '0';
      end;
    if (tot_juste = 1) then
      begin
        TM2[6,6] := '1';
      end;
    if (tot_juste = 2) then
      begin
        TM2[6,6] := '2';
      end;
    if (tot_juste = 3) then
      begin
        TM2[6,6] := '3';
      end;
    if (tot_juste = 4) then
      begin
        TM2[6,6] := '4';
      end;

    clrscr;
    x1 := 0;
    y1 := 4;
    writeln('                                                    MASTERMIND');
    writeln('                                              (Vous etes le decodeur)');
    writeln;
    writeln;
    writeln('                               ----------------------------------------------------');
    writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
    writeln('                               |--------------------------------------------------|');
    writeln('                               |--------------------------------------------------|');

    write('                           ');
    for i := 2 to 11 do
        begin
          for j := 1 to 4 do
              begin
                x1 := x1 + 1;
                write('    |    ', TM2[i,j]:1);

                if (x1 = 4) then
                   begin
                     write('    |');
                     for j1 := 5 to 6 do
                         begin
                           write(' | ', TM2[i,j1]:1);
                         end;
                   end;

                y1 := y1 + 1;
                if (y1 = 8) then
                   begin
                     writeln(' ||');
                     writeln('                               |--------------------------------------------------|');
                     write('                           ');
                     y1 := 4;
                     x1 := 0;
                   end;
              end;
        end;

    decodeur2 := 0;
    if (win = 1) then
       begin
         writeln;
         writeln('C''est gagne vous avez trouve son code du sixieme coup ! ');
         writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
         writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
         readln(decodeur2);
         while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
         if (decodeur2 = 1) then
             begin
               role := 0;
               decodeur1 := 1;
             end;
       end;

    if (decodeur2 = 2) then
       begin
         decodeur1 := 1;
         jouer := 1;
       end;
  end;
                                    // 7))

  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
      for j := 1 to 4 do
          begin
            TM2[5,j] := '?';
          end;
      clrscr;
      x1 := 0;
      y1 := 4;
      writeln('                                                    MASTERMIND');
      writeln('                                              (Vous etes le decodeur)');
      writeln;
      writeln;
      writeln('                               ----------------------------------------------------');
      writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
      writeln('                               |--------------------------------------------------|');
      writeln('                               |--------------------------------------------------|');

      write('                           ');
      for i := 2 to 11 do
          begin
            for j := 1 to 4 do
                begin
                  x1 := x1 + 1;
                  write('    |    ', TM2[i,j]:1);

                  if (x1 = 4) then
                     begin
                       write('    |');
                       for j1 := 5 to 6 do
                           begin
                             write(' | ', TM2[i,j1]:1);
                           end;
                     end;

                  y1 := y1 + 1;
                  if (y1 = 8) then
                     begin
                       writeln(' ||');
                       writeln('                               |--------------------------------------------------|');
                       write('                           ');
                       y1 := 4;
                       x1 := 0;
                     end;
                end;
          end;


      writeln;
      write('Choisissez le septieme code de gauche a droite et tapez entree apres chaque chiffre : ');
      for j := 1 to 4 do
          begin
            readln(choix);
            while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
            if (choix = 0) then
               begin
                 TM2[5,j] := '0';
               end;
            if (choix = 1) then
               begin
                 TM2[5,j] := '1';
               end;
            if (choix= 2) then
               begin
                 TM2[5,j] := '2';
               end;
            if (choix = 3) then
               begin
                 TM2[5,j] := '3';
               end;
            if (choix = 4) then
               begin
                 TM2[5,j] := '4';
               end;
            if (choix = 5) then
               begin
                 TM2[5,j] := '5';
               end;
          end;

      bon := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,j] = TM2[5,j]) then
               begin
                 bon := bon + 1;
               end;
          end;

      if (bon = 0) then
         begin
           TM2[5,5] := '0';
         end;
      if (bon = 1) then
         begin
           TM2[5,5] := '1';
         end;
      if (bon = 2) then
         begin
           TM2[5,5] := '2';
         end;
      if (bon = 3) then
         begin
           TM2[5,5] := '3';
         end;
      if (bon = 4) then
         begin
           TM2[5,5] := '4';
           win := 1;
         end;

      juste1 := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,1] = TM2[5,j]) then
              begin
                juste1 := juste1 + 1;
              end;
          end;
      juste2 := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,2] = TM2[5,j]) then
              begin
                juste2 := juste2 + 1;
              end;
          end;
      juste3 := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,3] = TM2[5,j]) then
              begin
                juste3 := juste3 + 1;
              end;
          end;
      juste4 := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,4] = TM2[5,j]) then
              begin
                juste4 := juste4 + 1;
              end;
          end;

      tot_juste := 0;
      tot_juste := juste1 + juste2 + juste3 + juste4;
      if (tot_juste = 0) then
        begin
          TM2[5,6] := '0';
        end;
      if (tot_juste = 1) then
        begin
          TM2[5,6] := '1';
        end;
      if (tot_juste = 2) then
        begin
          TM2[5,6] := '2';
        end;
      if (tot_juste = 3) then
        begin
          TM2[5,6] := '3';
        end;
      if (tot_juste = 4) then
        begin
          TM2[5,6] := '4';
        end;

      clrscr;
      x1 := 0;
      y1 := 4;
      writeln('                                                    MASTERMIND');
      writeln('                                              (Vous etes le decodeur)');
      writeln;
      writeln;
      writeln('                               ----------------------------------------------------');
      writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
      writeln('                               |--------------------------------------------------|');
      writeln('                               |--------------------------------------------------|');

      write('                           ');
      for i := 2 to 11 do
          begin
            for j := 1 to 4 do
                begin
                  x1 := x1 + 1;
                  write('    |    ', TM2[i,j]:1);

                  if (x1 = 4) then
                     begin
                       write('    |');
                       for j1 := 5 to 6 do
                           begin
                             write(' | ', TM2[i,j1]:1);
                           end;
                     end;

                  y1 := y1 + 1;
                  if (y1 = 8) then
                     begin
                       writeln(' ||');
                       writeln('                               |--------------------------------------------------|');
                       write('                           ');
                       y1 := 4;
                       x1 := 0;
                     end;
                end;
          end;

      decodeur2 := 0;
      if (win = 1) then
         begin
           writeln;
           writeln('C''est gagne vous avez trouve son code du septieme coup ! ');
           writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
           writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
           readln(decodeur2);
           while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
           if (decodeur2 = 1) then
             begin
               role := 0;
               decodeur1 := 1;
             end;
         end;

      if (decodeur2 = 2) then
         begin
           decodeur1 := 1;
           jouer := 1;
         end;
  end;

                      //  8 ))

  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
        for j := 1 to 4 do
            begin
              TM2[4,j] := '?';
            end;
        clrscr;
        x1 := 0;
        y1 := 4;
        writeln('                                                    MASTERMIND');
        writeln('                                              (Vous etes le decodeur)');
        writeln;
        writeln;
        writeln('                               ----------------------------------------------------');
        writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
        writeln('                               |--------------------------------------------------|');
        writeln('                               |--------------------------------------------------|');

        write('                           ');
        for i := 2 to 11 do
            begin
              for j := 1 to 4 do
                  begin
                    x1 := x1 + 1;
                    write('    |    ', TM2[i,j]:1);

                    if (x1 = 4) then
                       begin
                         write('    |');
                         for j1 := 5 to 6 do
                             begin
                               write(' | ', TM2[i,j1]:1);
                             end;
                       end;

                    y1 := y1 + 1;
                    if (y1 = 8) then
                       begin
                         writeln(' ||');
                         writeln('                               |--------------------------------------------------|');
                         write('                           ');
                         y1 := 4;
                         x1 := 0;
                       end;
                  end;
            end;


        writeln;
        write('Choisissez le huitieme code de gauche a droite et tapez entree apres chaque chiffre : ');
        for j := 1 to 4 do
            begin
              readln(choix);
              while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
              if (choix = 0) then
                 begin
                   TM2[4,j] := '0';
                 end;
              if (choix = 1) then
                 begin
                   TM2[4,j] := '1';
                 end;
              if (choix= 2) then
                 begin
                   TM2[4,j] := '2';
                 end;
              if (choix = 3) then
                 begin
                   TM2[4,j] := '3';
                 end;
              if (choix = 4) then
                 begin
                   TM2[4,j] := '4';
                 end;
              if (choix = 5) then
                 begin
                   TM2[4,j] := '5';
                 end;
            end;

        bon := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,j] = TM2[4,j]) then
                 begin
                   bon := bon + 1;
                 end;
            end;

        if (bon = 0) then
           begin
             TM2[4,5] := '0';
           end;
        if (bon = 1) then
           begin
             TM2[4,5] := '1';
           end;
        if (bon = 2) then
           begin
             TM2[4,5] := '2';
           end;
        if (bon = 3) then
           begin
             TM2[4,5] := '3';
           end;
        if (bon = 4) then
           begin
             TM2[4,5] := '4';
             win := 1;
           end;

        juste1 := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,1] = TM2[4,j]) then
                begin
                  juste1 := juste1 + 1;
                end;
            end;
        juste2 := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,2] = TM2[4,j]) then
                begin
                  juste2 := juste2 + 1;
                end;
            end;
        juste3 := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,3] = TM2[4,j]) then
                begin
                  juste3 := juste3 + 1;
                end;
            end;
        juste4 := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,4] = TM2[4,j]) then
                begin
                  juste4 := juste4 + 1;
                end;
            end;

        tot_juste := 0;
        tot_juste := juste1 + juste2 + juste3 + juste4;
        if (tot_juste = 0) then
          begin
            TM2[4,6] := '0';
          end;
        if (tot_juste = 1) then
          begin
            TM2[4,6] := '1';
          end;
        if (tot_juste = 2) then
          begin
            TM2[4,6] := '2';
          end;
        if (tot_juste = 3) then
          begin
            TM2[4,6] := '3';
          end;
        if (tot_juste = 4) then
          begin
            TM2[4,6] := '4';
          end;

        clrscr;
        x1 := 0;
        y1 := 4;
        writeln('                                                    MASTERMIND');
        writeln('                                              (Vous etes le decodeur)');
        writeln;
        writeln;
        writeln('                               ----------------------------------------------------');
        writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
        writeln('                               |--------------------------------------------------|');
        writeln('                               |--------------------------------------------------|');

        write('                           ');
        for i := 2 to 11 do
            begin
              for j := 1 to 4 do
                  begin
                    x1 := x1 + 1;
                    write('    |    ', TM2[i,j]:1);

                    if (x1 = 4) then
                       begin
                         write('    |');
                         for j1 := 5 to 6 do
                             begin
                               write(' | ', TM2[i,j1]:1);
                             end;
                       end;

                    y1 := y1 + 1;
                    if (y1 = 8) then
                       begin
                         writeln(' ||');
                         writeln('                               |--------------------------------------------------|');
                         write('                           ');
                         y1 := 4;
                         x1 := 0;
                       end;
                  end;
            end;

        decodeur2 := 0;
        if (win = 1) then
           begin
             writeln;
             writeln('C''est gagne vous avez trouve son code du huitieme coup ! ');
             writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
             writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
             readln(decodeur2);
             while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
             if (decodeur2 = 1) then
               begin
                 role := 0;
                 decodeur1 := 1;
               end;
           end;

        if (decodeur2 = 2) then
           begin
             decodeur1 := 1;
             jouer := 1;
           end;
  end;

                                          // 9 )

  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
        for j := 1 to 4 do
            begin
              TM2[3,j] := '?';
            end;
        clrscr;
        x1 := 0;
        y1 := 4;
        writeln('                                                    MASTERMIND');
        writeln('                                              (Vous etes le decodeur)');
        writeln;
        writeln;
        writeln('                               ----------------------------------------------------');
        writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
        writeln('                               |--------------------------------------------------|');
        writeln('                               |--------------------------------------------------|');

        write('                           ');
        for i := 2 to 11 do
            begin
              for j := 1 to 4 do
                  begin
                    x1 := x1 + 1;
                    write('    |    ', TM2[i,j]:1);

                    if (x1 = 4) then
                       begin
                         write('    |');
                         for j1 := 5 to 6 do
                             begin
                               write(' | ', TM2[i,j1]:1);
                             end;
                       end;

                    y1 := y1 + 1;
                    if (y1 = 8) then
                       begin
                         writeln(' ||');
                         writeln('                               |--------------------------------------------------|');
                         write('                           ');
                         y1 := 4;
                         x1 := 0;
                       end;
                  end;
            end;


        writeln;
        write('Choisissez le neuvieme code de gauche a droite et tapez entree apres chaque chiffre : ');
        for j := 1 to 4 do
            begin
              readln(choix);
              while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
              if (choix = 0) then
                 begin
                   TM2[3,j] := '0';
                 end;
              if (choix = 1) then
                 begin
                   TM2[3,j] := '1';
                 end;
              if (choix= 2) then
                 begin
                   TM2[3,j] := '2';
                 end;
              if (choix = 3) then
                 begin
                   TM2[3,j] := '3';
                 end;
              if (choix = 4) then
                 begin
                   TM2[3,j] := '4';
                 end;
              if (choix = 5) then
                 begin
                   TM2[3,j] := '5';
                 end;
            end;

        bon := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,j] = TM2[3,j]) then
                 begin
                   bon := bon + 1;
                 end;
            end;

        if (bon = 0) then
           begin
             TM2[3,5] := '0';
           end;
        if (bon = 1) then
           begin
             TM2[3,5] := '1';
           end;
        if (bon = 2) then
           begin
             TM2[3,5] := '2';
           end;
        if (bon = 3) then
           begin
             TM2[3,5] := '3';
           end;
        if (bon = 4) then
           begin
             TM2[3,5] := '4';
             win := 1;
           end;

        juste1 := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,1] = TM2[3,j]) then
                begin
                  juste1 := juste1 + 1;
                end;
            end;
        juste2 := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,2] = TM2[3,j]) then
                begin
                  juste2 := juste2 + 1;
                end;
            end;
        juste3 := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,3] = TM2[3,j]) then
                begin
                  juste3 := juste3 + 1;
                end;
            end;
        juste4 := 0;
        for j := 1 to 4 do
            begin
              if (TM2[1,4] = TM2[3,j]) then
                begin
                  juste4 := juste4 + 1;
                end;
            end;

        tot_juste := 0;
        tot_juste := juste1 + juste2 + juste3 + juste4;
        if (tot_juste = 0) then
          begin
            TM2[3,6] := '0';
          end;
        if (tot_juste = 1) then
          begin
            TM2[3,6] := '1';
          end;
        if (tot_juste = 2) then
          begin
            TM2[3,6] := '2';
          end;
        if (tot_juste = 3) then
          begin
            TM2[3,6] := '3';
          end;
        if (tot_juste = 4) then
          begin
            TM2[3,6] := '4';
          end;

        clrscr;
        x1 := 0;
        y1 := 4;
        writeln('                                                    MASTERMIND');
        writeln('                                              (Vous etes le decodeur)');
        writeln;
        writeln;
        writeln('                               ----------------------------------------------------');
        writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
        writeln('                               |--------------------------------------------------|');
        writeln('                               |--------------------------------------------------|');

        write('                           ');
        for i := 2 to 11 do
            begin
              for j := 1 to 4 do
                  begin
                    x1 := x1 + 1;
                    write('    |    ', TM2[i,j]:1);

                    if (x1 = 4) then
                       begin
                         write('    |');
                         for j1 := 5 to 6 do
                             begin
                               write(' | ', TM2[i,j1]:1);
                             end;
                       end;

                    y1 := y1 + 1;
                    if (y1 = 8) then
                       begin
                         writeln(' ||');
                         writeln('                               |--------------------------------------------------|');
                         write('                           ');
                         y1 := 4;
                         x1 := 0;
                       end;
                  end;
            end;

        decodeur2 := 0;
        if (win = 1) then
           begin
             writeln;
             writeln('C''est gagne vous avez trouve son code du neuvieme coup ! ');
             writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
             writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
             readln(decodeur2);
             while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
             if (decodeur2 = 1) then
               begin
                 role := 0;
                 decodeur1 := 1;
               end;
           end;

        if (decodeur2 = 2) then
           begin
             jouer := 1;
             decodeur1 := 1;
           end;
  end;

                                      // 10 )


  if ((decodeur2 <> 2) and (decodeur2 <> 1)) then
  begin
      for j := 1 to 4 do
          begin
            TM2[2,j] := '?';
          end;
      clrscr;
      x1 := 0;
      y1 := 4;
      writeln('                                                    MASTERMIND');
      writeln('                                              (Vous etes le decodeur)');
      writeln;
      writeln;
      writeln('                               ----------------------------------------------------');
      writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
      writeln('                               |--------------------------------------------------|');
      writeln('                               |--------------------------------------------------|');

      write('                           ');
      for i := 2 to 11 do
          begin
            for j := 1 to 4 do
                begin
                  x1 := x1 + 1;
                  write('    |    ', TM2[i,j]:1);

                  if (x1 = 4) then
                     begin
                       write('    |');
                       for j1 := 5 to 6 do
                           begin
                             write(' | ', TM2[i,j1]:1);
                           end;
                     end;

                  y1 := y1 + 1;
                  if (y1 = 8) then
                     begin
                       writeln(' ||');
                       writeln('                               |--------------------------------------------------|');
                       write('                           ');
                       y1 := 4;
                       x1 := 0;
                     end;
                end;
          end;


      writeln;
      write('Choisissez le dixieme et dernier code de gauche a droite et tapez entree apres chaque chiffre : ');
      for j := 1 to 4 do
          begin
            readln(choix);
            while ((choix <> 0) and (choix <> 1) and (choix <> 2) and (choix <> 3) and (choix <> 4) and (choix <> 5)) do
                begin
                  writeln('Chiffre entre 0 et 5 svp : ');
                  readln(choix);
                end;
            if (choix = 0) then
               begin
                 TM2[2,j] := '0';
               end;
            if (choix = 1) then
               begin
                 TM2[2,j] := '1';
               end;
            if (choix= 2) then
               begin
                 TM2[2,j] := '2';
               end;
            if (choix = 3) then
               begin
                 TM2[2,j] := '3';
               end;
            if (choix = 4) then
               begin
                 TM2[2,j] := '4';
               end;
            if (choix = 5) then
               begin
                 TM2[2,j] := '5';
               end;
          end;

      bon := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,j] = TM2[2,j]) then
               begin
                 bon := bon + 1;
               end;
          end;

      if (bon = 0) then
         begin
           TM2[2,5] := '0';
         end;
      if (bon = 1) then
         begin
           TM2[2,5] := '1';
         end;
      if (bon = 2) then
         begin
           TM2[2,5] := '2';
         end;
      if (bon = 3) then
         begin
           TM2[2,5] := '3';
         end;
      if (bon = 4) then
         begin
           TM2[2,5] := '4';
           win := 1;
         end;

      juste1 := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,1] = TM2[2,j]) then
              begin
                juste1 := juste1 + 1;
              end;
          end;
      juste2 := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,2] = TM2[2,j]) then
              begin
                juste2 := juste2 + 1;
              end;
          end;
      juste3 := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,3] = TM2[2,j]) then
              begin
                juste3 := juste3 + 1;
              end;
          end;
      juste4 := 0;
      for j := 1 to 4 do
          begin
            if (TM2[1,4] = TM2[2,j]) then
              begin
                juste4 := juste4 + 1;
              end;
          end;

      tot_juste := 0;
      tot_juste := juste1 + juste2 + juste3 + juste4;
      if (tot_juste = 0) then
        begin
          TM2[2,6] := '0';
        end;
      if (tot_juste = 1) then
        begin
          TM2[2,6] := '1';
        end;
      if (tot_juste = 2) then
        begin
          TM2[2,6] := '2';
        end;
      if (tot_juste = 3) then
        begin
          TM2[2,6] := '3';
        end;
      if (tot_juste = 4) then
        begin
          TM2[2,6] := '4';
        end;

      clrscr;
      x1 := 0;
      y1 := 4;
      writeln('                                                    MASTERMIND');
      writeln('                                              (Vous etes le decodeur)');
      writeln;
      writeln;
      writeln('                               ----------------------------------------------------');
      writeln('                               |    ', '?','    |    ', '?','    |    ', '?','    |    ', '?','    | |        | ');
      writeln('                               |--------------------------------------------------|');
      writeln('                               |--------------------------------------------------|');

      write('                           ');
      for i := 2 to 11 do
          begin
            for j := 1 to 4 do
                begin
                  x1 := x1 + 1;
                  write('    |    ', TM2[i,j]:1);

                  if (x1 = 4) then
                     begin
                       write('    |');
                       for j1 := 5 to 6 do
                           begin
                             write(' | ', TM2[i,j1]:1);
                           end;
                     end;

                  y1 := y1 + 1;
                  if (y1 = 8) then
                     begin
                       writeln(' ||');
                       writeln('                               |--------------------------------------------------|');
                       write('                           ');
                       y1 := 4;
                       x1 := 0;
                     end;
                end;
          end;

      decodeur2 := 0;
      if (win = 1) then
         begin
           writeln;
           writeln('C''est gagne vous avez trouve son code du dixieme coup ! ');
           writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
           writeln('Tapez 1 pour refaire une partie et 2 pour arreter');
           readln(decodeur2);
           while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
         end
                   else
         begin
           writeln;
           writeln('Vous avez perdu. Vous n''avez pas reussi a trouver son code en 10 coups max ! Dommage !');
           writeln('Son code etait : ', TM2[1,1]:2, TM2[1,2]:2, TM2[1,3]:2, TM2[1,4]:2);
           writeln('Tapez 1 pour rententez votre chance ou tapez 2 pour quitter');
           readln(decodeur2);
           while ((decodeur2<>1) and (decodeur2<>2)) do
               begin
                 write('Tapez 1 ou 2 svp :');
                 readln(decodeur2);
               end;
         end;

     if (decodeur2 = 1) then
       begin
         role := 0;
         decodeur1 := 1;
       end;

     if (decodeur2 = 2) then
        begin
          jouer := 1;
          decodeur1 := 1;
        end;






  end;
  end;
end;
  end;


  readln;
end.

