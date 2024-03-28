-module(class_Architecture_ViewProfile).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"ViewProfileInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Architecture_ViewProfile,'prometheus'=null}).
'init_internal'()->
    #state{}.

 %% architecture.abs:441
'get_val_internal'(#state{'prometheus'=G},'prometheus')->
    object:register_read('prometheus'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% architecture.abs:441
'set_val_internal'(S,'prometheus',V)->
    object:register_write('prometheus'),
    S#state{'prometheus'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'prometheus', S#state.'prometheus' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_prometheus,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'prometheus',P_prometheus)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% architecture.abs:442
 %% architecture.abs:442
'm_request'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_balancer_0,V_start_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'balancer' => V_balancer_0,
 'start' => V_start_0 }),
    try
         %% architecture.abs:443--443
        cog:block_current_task_for_cpu(Cog, rationals:rdiv(( rationals:mul(( rationals:mul(m_Param_funs:f_speed_per_core(Cog,Stack),m_Param_funs:f_time_unit_to_sec(Cog,Stack))) ,3582)) ,m_Param_funs:f_view_MCL(Cog,Stack)) ,[O,DC| Stack]),
        skip,
         %% architecture.abs:444--444
        put(vars, (get(vars))#{'stop' => m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])}),
         %% architecture.abs:445--445
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"latency"/utf8>>,<<"ViewProfile"/utf8>>,( rationals:sub(maps:get('stop', get(vars)),maps:get('start', get(vars)))) ,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% architecture.abs:446--446
        T_2 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"completed"/utf8>>,<<"ViewProfile"/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_2,
         %% architecture.abs:447--447
        T_3 = cog:create_task(maps:get('balancer', get(vars)),'m_removeMessage',[[]],#task_info{method= <<"removeMessage"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_3,
         %% architecture.abs:448--448
        dataSuccess
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method request and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
