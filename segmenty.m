function[segment] = segmenty(data,n)
switch n
    case 1
        najviacpotvrdenych = max(data.Pocet_potvrdenych_PCR_testami);
        indexnp = find(najviacpotvrdenych);
        segment = (indexnp/n)+1;
        disp("najviac potvrdenych je v : "+segment+". segmente");
    case 2
        najviachospitalozavnych = max(data.Pocet_hospitalizovanych);
        indexnh = find(najviachospitalozavnych);
        segment = (indexnh/n)+1;
        disp("najviac hospitalizovanych je v : "+segment+". segmente");
    case 3
        najviacumrti = max(data.Pocet_umrti);
        indexpu = find(najviacumrti);
        segment=(indexpu/n)+1;
        disp("najviac umrti je v : "+segment+". segmente");
end
