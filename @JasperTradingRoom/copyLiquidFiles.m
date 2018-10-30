function copyLiquidFiles()
%���̺󿽱��ֲ֣��ɽ���Ȩ���ļ�

%��Ҫ�����ڿ������ļ���
roots=[{'E:\�����ĵ�\temp'},{'E:\�����ĵ�\temp\deal'},{'E:\�����ĵ�\temp\tradingDetail'},{'V:\Neo\��������\ÿ�ճɽ���ϸ'}]; %,{'V:\Neo\��������\ÿ�ճɽ�'}
targets=[{'V:\Neo\��������\���̲�λ'},{'V:\Neo\��������\ÿ�ճɽ�'},{'V:\ÿ�ճɽ�����ϸ'},{'V:\ÿ�ճɽ�����ϸ'}];%,{'V:\ÿ�ճɽ���'}
for i=1:length(roots)
    fileroot=roots{i};
    if ~strcmp(fileroot(end),'\')
        fileroot=strcat(fileroot,'\');
    end
    filelist = dir(fileroot);
    for j = 1:length(filelist)
        cnts=0;
        if (strcmp(filelist(j).name,'.') || strcmp(filelist(j).name,'..') || filelist(j).isdir)
            continue;            
        end
        if floor(filelist(j).datenum) == today()
            copyfile(strcat(fileroot,filelist(j).name),targets{i});            
        end        
    end
end

%��һ���Կ������ļ���
copyfile('E:\�����ĵ�\temp\future','V:\Neo\��������\�ڻ�Ȩ��');
copyfile('V:\Neo\��������\�ڻ�Ȩ��','V:\DailyFutureDetail');
copyfile('V:\Neo\��������\���̲�λ','V:\��Ʒ�ֲ�');

 
end