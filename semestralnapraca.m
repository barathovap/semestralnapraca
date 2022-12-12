global data;
data = readtable("OpenData_Slovakia_Covid_DailyStats.csv");

% Voľba typu grafu
prompt = {'zvolte premennu 1-pocet_potvrdenych, 2-dennych_PCR_testov, 3-dennych_PCR_prirastkov, 4- úmrtia, 5-Ag testy, 6-Agposit, 7-Pocet_hospitalizovanych'};
dlgtitle = 'Volba grafu';
dims = [1 50];
definput = {'1'};
odpoved = inputdlg(prompt,dlgtitle,dims,definput);
x=str2double(odpoved);

% Voľba časového intervalu
prompt = {'zvolte prvy den',' zvolte posledny den'};
dlgtitle = 'Rozsah dni';
dims = [1 50];
definput = {'2020-03-13','2020-03-30'};
dni = inputdlg(prompt,dlgtitle,dims,definput);
    den1=(dni(1));
    den2=(dni(2));

%     premena str na dátum
    den01=datetime(den1);
    den02=datetime(den2);

%   for cyklus pre premenu dátumov na čísla
    for i=1:height(data.Datum)
        if data.Datum(i)==den01
            den1=i;
        end
        if data.Datum(i)==den02
            den2=i;
        end
    end


% Voľba spocitania dni 
prompt = {'Kde chceš spočítať dni? median-1 , specificky den - 2'};
dlgtitle = 'Pocet dni';
dims = [1 50];
definput = {'1'};
d=inputdlg(prompt,dlgtitle,dims,definput);
y=str2double(d);

% Zavolanie funkcie na grafy
grafy(x,data,den1,den2,y);

% Volba hodnoty, pre ktorú bude vypočítaný najhorší segment
prompt = {'Zadaj ktorej hodnote chces zistit najhorsí segment: 1-pocetpotvrdenych 2-pocethospitalizovanych, 3-pocetumrti '};
dlgtitle = 'Volba najhoršieho segmentu';
dims = [1 50];
definput = {'1'};
vyber = inputdlg(prompt,dlgtitle,dims,definput);
n=str2double(vyber);

% Zavolanie funkcie - segmenty
segmenty(data,n);




