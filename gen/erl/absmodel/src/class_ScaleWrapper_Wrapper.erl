-module(class_ScaleWrapper_Wrapper).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"WrapperInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_ScaleWrapper_Wrapper,'cancD'=null,'getRewardD'=null,'bookflightD'=null,'updatemilesD'=null,'queryflightD'=null,'viewprofileD'=null,'updateprofileD'=null,'authD'=null,'validateIdD'=null}).
'init_internal'()->
    #state{}.

 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'cancD'=G},'cancD')->
    object:register_read('cancD'),
    G;
 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'getRewardD'=G},'getRewardD')->
    object:register_read('getRewardD'),
    G;
 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'bookflightD'=G},'bookflightD')->
    object:register_read('bookflightD'),
    G;
 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'updatemilesD'=G},'updatemilesD')->
    object:register_read('updatemilesD'),
    G;
 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'queryflightD'=G},'queryflightD')->
    object:register_read('queryflightD'),
    G;
 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'viewprofileD'=G},'viewprofileD')->
    object:register_read('viewprofileD'),
    G;
 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'updateprofileD'=G},'updateprofileD')->
    object:register_read('updateprofileD'),
    G;
 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'authD'=G},'authD')->
    object:register_read('authD'),
    G;
 %% ScaleWrapper.abs:20
'get_val_internal'(#state{'validateIdD'=G},'validateIdD')->
    object:register_read('validateIdD'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% ScaleWrapper.abs:20
'set_val_internal'(S,'cancD',V)->
    object:register_write('cancD'),
    S#state{'cancD'=V};
 %% ScaleWrapper.abs:20
'set_val_internal'(S,'getRewardD',V)->
    object:register_write('getRewardD'),
    S#state{'getRewardD'=V};
 %% ScaleWrapper.abs:20
'set_val_internal'(S,'bookflightD',V)->
    object:register_write('bookflightD'),
    S#state{'bookflightD'=V};
 %% ScaleWrapper.abs:20
'set_val_internal'(S,'updatemilesD',V)->
    object:register_write('updatemilesD'),
    S#state{'updatemilesD'=V};
 %% ScaleWrapper.abs:20
'set_val_internal'(S,'queryflightD',V)->
    object:register_write('queryflightD'),
    S#state{'queryflightD'=V};
 %% ScaleWrapper.abs:20
'set_val_internal'(S,'viewprofileD',V)->
    object:register_write('viewprofileD'),
    S#state{'viewprofileD'=V};
 %% ScaleWrapper.abs:20
'set_val_internal'(S,'updateprofileD',V)->
    object:register_write('updateprofileD'),
    S#state{'updateprofileD'=V};
 %% ScaleWrapper.abs:20
'set_val_internal'(S,'authD',V)->
    object:register_write('authD'),
    S#state{'authD'=V};
 %% ScaleWrapper.abs:20
'set_val_internal'(S,'validateIdD',V)->
    object:register_write('validateIdD'),
    S#state{'validateIdD'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'cancD', S#state.'cancD' }
        , { 'getRewardD', S#state.'getRewardD' }
        , { 'bookflightD', S#state.'bookflightD' }
        , { 'updatemilesD', S#state.'updatemilesD' }
        , { 'queryflightD', S#state.'queryflightD' }
        , { 'viewprofileD', S#state.'viewprofileD' }
        , { 'updateprofileD', S#state.'updateprofileD' }
        , { 'authD', S#state.'authD' }
        , { 'validateIdD', S#state.'validateIdD' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_cancD,P_getRewardD,P_bookflightD,P_updatemilesD,P_queryflightD,P_viewprofileD,P_updateprofileD,P_authD,P_validateIdD,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'cancD',P_cancD)),
    put(this, C:set_val_internal(get(this),'getRewardD',P_getRewardD)),
    put(this, C:set_val_internal(get(this),'bookflightD',P_bookflightD)),
    put(this, C:set_val_internal(get(this),'updatemilesD',P_updatemilesD)),
    put(this, C:set_val_internal(get(this),'queryflightD',P_queryflightD)),
    put(this, C:set_val_internal(get(this),'viewprofileD',P_viewprofileD)),
    put(this, C:set_val_internal(get(this),'updateprofileD',P_updateprofileD)),
    put(this, C:set_val_internal(get(this),'authD',P_authD)),
    put(this, C:set_val_internal(get(this),'validateIdD',P_validateIdD)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% ScaleWrapper.abs:22
 %% ScaleWrapper.abs:22
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% ScaleWrapper.abs:23--23
        case (not cmp:eq(C:get_val_internal(get(this), 'cancD'),null)) of
            true ->  %% ScaleWrapper.abs:23--23
            T_1 = cog:create_task(C:get_val_internal(get(this), 'cancD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:24--24
        case (not cmp:eq(C:get_val_internal(get(this), 'getRewardD'),null)) of
            true ->  %% ScaleWrapper.abs:24--24
            T_1 = cog:create_task(C:get_val_internal(get(this), 'getRewardD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:25--25
        case (not cmp:eq(C:get_val_internal(get(this), 'bookflightD'),null)) of
            true ->  %% ScaleWrapper.abs:25--25
            T_1 = cog:create_task(C:get_val_internal(get(this), 'bookflightD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:26--26
        case (not cmp:eq(C:get_val_internal(get(this), 'updatemilesD'),null)) of
            true ->  %% ScaleWrapper.abs:26--26
            T_1 = cog:create_task(C:get_val_internal(get(this), 'updatemilesD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:27--27
        case (not cmp:eq(C:get_val_internal(get(this), 'queryflightD'),null)) of
            true ->  %% ScaleWrapper.abs:27--27
            T_1 = cog:create_task(C:get_val_internal(get(this), 'queryflightD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:28--28
        case (not cmp:eq(C:get_val_internal(get(this), 'viewprofileD'),null)) of
            true ->  %% ScaleWrapper.abs:28--28
            T_1 = cog:create_task(C:get_val_internal(get(this), 'viewprofileD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:29--29
        case (not cmp:eq(C:get_val_internal(get(this), 'updateprofileD'),null)) of
            true ->  %% ScaleWrapper.abs:29--29
            T_1 = cog:create_task(C:get_val_internal(get(this), 'updateprofileD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:30--30
        case (not cmp:eq(C:get_val_internal(get(this), 'authD'),null)) of
            true ->  %% ScaleWrapper.abs:30--30
            T_1 = cog:create_task(C:get_val_internal(get(this), 'authD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:31--31
        case (not cmp:eq(C:get_val_internal(get(this), 'validateIdD'),null)) of
            true ->  %% ScaleWrapper.abs:31--31
            T_1 = cog:create_task(C:get_val_internal(get(this), 'validateIdD'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->         ok
        end
        end
        end
        end
        end
        end
        end
        end
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% ScaleWrapper.abs:34
 %% ScaleWrapper.abs:34
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% ScaleWrapper.abs:35--35
        case (not cmp:eq(C:get_val_internal(get(this), 'cancD'),null)) of
            true ->  %% ScaleWrapper.abs:35--35
            T_1 = cog:create_task(C:get_val_internal(get(this), 'cancD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:36--36
        case (not cmp:eq(C:get_val_internal(get(this), 'getRewardD'),null)) of
            true ->  %% ScaleWrapper.abs:36--36
            T_1 = cog:create_task(C:get_val_internal(get(this), 'getRewardD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:37--37
        case (not cmp:eq(C:get_val_internal(get(this), 'bookflightD'),null)) of
            true ->  %% ScaleWrapper.abs:37--37
            T_1 = cog:create_task(C:get_val_internal(get(this), 'bookflightD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:38--38
        case (not cmp:eq(C:get_val_internal(get(this), 'updatemilesD'),null)) of
            true ->  %% ScaleWrapper.abs:38--38
            T_1 = cog:create_task(C:get_val_internal(get(this), 'updatemilesD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:39--39
        case (not cmp:eq(C:get_val_internal(get(this), 'queryflightD'),null)) of
            true ->  %% ScaleWrapper.abs:39--39
            T_1 = cog:create_task(C:get_val_internal(get(this), 'queryflightD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:40--40
        case (not cmp:eq(C:get_val_internal(get(this), 'viewprofileD'),null)) of
            true ->  %% ScaleWrapper.abs:40--40
            T_1 = cog:create_task(C:get_val_internal(get(this), 'viewprofileD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:41--41
        case (not cmp:eq(C:get_val_internal(get(this), 'updateprofileD'),null)) of
            true ->  %% ScaleWrapper.abs:41--41
            T_1 = cog:create_task(C:get_val_internal(get(this), 'updateprofileD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:42--42
        case (not cmp:eq(C:get_val_internal(get(this), 'authD'),null)) of
            true ->  %% ScaleWrapper.abs:42--42
            T_1 = cog:create_task(C:get_val_internal(get(this), 'authD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% ScaleWrapper.abs:43--43
        case (not cmp:eq(C:get_val_internal(get(this), 'validateIdD'),null)) of
            true ->  %% ScaleWrapper.abs:43--43
            T_1 = cog:create_task(C:get_val_internal(get(this), 'validateIdD'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->         ok
        end
        end
        end
        end
        end
        end
        end
        end
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
