function [graf,med]=grafy(x,data,den1,den2,y)
pole=ones(1,den1-den2);
pocet_d=0;
switch x
    case 1
        graf = bar(data.Datum(den1:den2),data.Pocet_potvrdenych_PCR_testami(den1:den2));
        title("Pocet potvrdenych");
        xlabel("dni");
        ylabel("potvrdení");

        med=median(data.Pocet_potvrdenych_PCR_testami(den1:den2),"all");
        yline(med);

        switch y
            case 1
                for i=den1:den2
                    pole(i)=data.Pocet_potvrdenych_PCR_testami(i);
                    if pole(i)>med
                        pocet_d=pocet_d+1;
                    end
                end
                disp("Dní nad medianom je "+pocet_d);

            case 2
                prompt = {'zvol nad koľým dňom sa spočítaju dni'};
                dlgtitle = 'deň';
                dims = [1 50];
                definput = {'5'};
                d=inputdlg(prompt,dlgtitle,dims,definput);
                den=str2double(d);
                for i=den1:den
                    pocet_d=pocet_d +1;
                end
                disp("Dní nad zbolenou hranicou je "+pocet_d);
        end

    case 2
        graf = bar(data.Datum(den1:den2),data.Dennych_PCR_testov(den1:den2));
        title("Pocet PCR testov");
        xlabel("dni");
        ylabel("PCR testy");

        med=median(data.Dennych_PCR_testov(den1:den2),"all");
        yline(med);

        switch y
            case 1
                for i=den1:den2
                    pole(i)=data.Dennych_PCR_testov(i);
                    if pole(i)>med
                        pocet_d=pocet_d+1;
                    end
                end
                disp("Dní nad medianom je "+pocet_d);

            case 2
                prompt = {'zvol nad koľým dňom sa spočítaju dni'};
                dlgtitle = 'deň';
                dims = [1 50];
                definput = {'5'};
                d=inputdlg(prompt,dlgtitle,dims,definput);
                den=str2double(d);
                for i=den1:den
                    pocet_d=pocet_d +1;
                end
                disp("Dní nad zbolenou hranicou je "+pocet_d);
        end

    case 3
        graf = bar(data.Datum(den1:den2),data.Dennych_PCR_prirastkov(den1:den2));

        title("Pocet prirastkov");
        xlabel("dni");
        ylabel("prírastky");

        med=median(data.Dennych_PCR_prirastkov(den1:den2),"all");
        yline(med);

        switch y
            case 1
                for i=den1:den2
                    pole(i)=data.Dennych_PCR_prirastkov(i);
                    if pole(i)>med
                        pocet_d=pocet_d+1;
                    end
                end
                disp("Dní nad medianom je "+pocet_d);

            case 2
                prompt = {'zvol nad koľým dňom sa spočítaju dni'};
                dlgtitle = 'deň';
                dims = [1 50];
                definput = {'5'};
                d=inputdlg(prompt,dlgtitle,dims,definput);
                den=str2double(d);
                for i=den1:den
                    pocet_d=pocet_d +1;
                end
                disp("Dní nad zbolenou hranicou je "+pocet_d);
        end


    case 4
        graf = bar(data.Datum(den1:den2),data.Pocet_umrti(den1:den2));

        title("Pocet úmrtí");
        xlabel("dni");
        ylabel("úmrtia");

        med=median(data.Pocet_umrti(den1:den2),"all");
        yline(med);

        switch y
            case 1
                for i=den1:den2
                    pole(i)=data.Pocet_umrti(i);
                    if pole(i)>med
                        pocet_d=pocet_d+1;
                    end
                end
                disp("Dní nad medianom je "+pocet_d);

            case 2
                prompt = {'zvol nad koľým dňom sa spočítaju dni'};
                dlgtitle = 'deň';
                dims = [1 50];
                definput = {'5'};
                d=inputdlg(prompt,dlgtitle,dims,definput);
                den=str2double(d);
                for i=den1:den
                    pocet_d=pocet_d +1;
                end
                disp("Dní nad zbolenou hranicou je "+pocet_d);
        end

   case 5
        NaN_tests = str2double(data.AgTests);
        graf = bar(data.Datum(den1:den2),NaN_tests(den1:den2));
        title("Pocet AG testov");
        xlabel("dni");
        ylabel("AGtesty");

        med=median(data.AgTests(den1:den2),"omitnan");
        yline(med);

        switch y
            case 1
                for i=den1:den2
                    pole(i)=NaN_tests(i);
                    if pole(i)>med
                        pocet_d=pocet_d+1;
                    end
                end
                disp("Dní nad medianom je "+pocet_d);

            case 2
                prompt = {'zvol nad koľým dňom sa spočítaju dni'};
                dlgtitle = 'deň';
                dims = [1 50];
                definput = {'5'};
                d=inputdlg(prompt,dlgtitle,dims,definput);
                den=str2double(d);
                for i=den1:den
                    pocet_d=pocet_d +1;
                end
                disp("Dní nad zbolenou hranicou je "+pocet_d);
        end

    case 6
        NaN_posit = str2double(data.AgPosit);
        graf = bar(data.Datum(den1:den2),NaN_posit(den1:den2));
        title("Pocet pozitivnych AG testov");
        xlabel("dni");
        ylabel("pozit Ag testy");

        med=median(data.AgPosit(den1:den2),"omitnan");
        yline(med);

        switch y
            case 1
                for i=den1:den2
                    pole(i)=NaN_posit(i);
                    if pole(i)>med
                        pocet_d=pocet_d+1;
                    end
                end
                disp("Dní nad medianom je "+pocet_d);

            case 2
                prompt = {'zvol nad koľým dňom sa spočítaju dni'};
                dlgtitle = 'deň';
                dims = [1 50];
                definput = {'5'};
                d=inputdlg(prompt,dlgtitle,dims,definput);
                den=str2double(d);
                for i=den1:den
                    pocet_d=pocet_d +1;
                end
                disp("Dní nad zbolenou hranicou je "+pocet_d);
        end

    case 7
        graf = bar(data.Datum(den1:den2),data.Pocet_hospitalizovanych(den1:den2));
        title("Pocet pozitivnych AG testov");
        xlabel("dni");
        ylabel("pozit Ag testy");
        
        med=median(data.Pocet_hospitalizovanych(den1:den2),"all");
        yline(med);

        switch y
            case 1
                for i=den1:den2
                    pole(i)=data.Pocet_hospitalizovanych(i);
                    if pole(i)>med
                        pocet_d=pocet_d+1;
                    end
                end
                disp("Dní nad medianom je "+pocet_d);

            case 2
                prompt = {'zvol nad koľým dňom sa spočítaju dni'};
                dlgtitle = 'deň';
                dims = [1 50];
                definput = {'5'};
                d=inputdlg(prompt,dlgtitle,dims,definput);
                den=str2double(d);
                for i=den1:den
                    pocet_d=pocet_d +1;
                end
                disp("Dní nad zbolenou hranicou je "+pocet_d);
        end

end