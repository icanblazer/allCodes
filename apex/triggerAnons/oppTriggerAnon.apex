Opportunity opp = new Opportunity();
opp.Name = 'Opp Trigger';
opp.StageName = 'Prospecting';
opp.CloseDate = Date.today().addDays(60);
insert opp;

opp.Name += ' updated';
update opp;