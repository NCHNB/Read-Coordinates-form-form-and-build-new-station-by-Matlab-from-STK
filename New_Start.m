function [app,root,sc] = New_Start(Name,StartTime,EndTime)
%%新建一个项目和场景
%   打开STK，新建项目及场景
app=actxserver('STK11.application');
app.Visible=1;
root=app.personality2;
root.NewScenario(Name);
root.CurrentScenario.SetTimePeriod(StartTime, EndTime);
root.CurrentScenario.Epoch = StartTime;
root.UnitPreferences.Item('DateFormat').SetCurrentUnit('EpMin');
root.ExecuteCommand('Animate * Reset');
sc=root.CurrentScenario;
end

