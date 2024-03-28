-module(class_Architecture_QueryFlightsLoadBalancer).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"QueryFlightsLoadBalancerInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Architecture_QueryFlightsLoadBalancer,'prometheus'=null,'instancesConnected'=null,'pending'=null,'nextInstance'=null}).
'init_internal'()->
    #state{}.

 %% architecture.abs:341
'get_val_internal'(#state{'prometheus'=G},'prometheus')->
    object:register_read('prometheus'),
    G;
 %% architecture.abs:342
'get_val_internal'(#state{'instancesConnected'=G},'instancesConnected')->
    object:register_read('instancesConnected'),
    G;
 %% architecture.abs:343
'get_val_internal'(#state{'pending'=G},'pending')->
    object:register_read('pending'),
    G;
 %% architecture.abs:344
'get_val_internal'(#state{'nextInstance'=G},'nextInstance')->
    object:register_read('nextInstance'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% architecture.abs:341
'set_val_internal'(S,'prometheus',V)->
    object:register_write('prometheus'),
    S#state{'prometheus'=V};
 %% architecture.abs:342
'set_val_internal'(S,'instancesConnected',V)->
    object:register_write('instancesConnected'),
    S#state{'instancesConnected'=V};
 %% architecture.abs:343
'set_val_internal'(S,'pending',V)->
    object:register_write('pending'),
    S#state{'pending'=V};
 %% architecture.abs:344
'set_val_internal'(S,'nextInstance',V)->
    object:register_write('nextInstance'),
    S#state{'nextInstance'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'prometheus', S#state.'prometheus' }
        , { 'instancesConnected', S#state.'instancesConnected' }
        , { 'pending', S#state.'pending' }
        , { 'nextInstance', S#state.'nextInstance' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_prometheus,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'prometheus',P_prometheus)),
     %% architecture.abs:342--342
    put(this, C:set_val_internal(get(this),'instancesConnected',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% architecture.abs:343--343
    put(this, C:set_val_internal(get(this),'pending',0)),
     %% architecture.abs:344--344
    put(this, C:set_val_internal(get(this),'nextInstance',-1)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% architecture.abs:346
 %% architecture.abs:346
'm_connectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_newInstance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'newInstance' => V_newInstance_0 }),
    try
         %% architecture.abs:347--347
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('newInstance', get(vars)),[O,DC| Stack]))),
         %% architecture.abs:348--348
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"instances"/utf8>>,<<"QueryFlights"/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% architecture.abs:351
 %% architecture.abs:351
'm_disconnectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% architecture.abs:352--352
        put(vars, (get(vars))#{'removedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]) - 1) ,[O,DC| Stack])}),
         %% architecture.abs:353--353
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_without(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('removedInstance', get(vars)),[O,DC| Stack]))),
         %% architecture.abs:354--354
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"instances"/utf8>>,<<"QueryFlights"/utf8>>,-1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% architecture.abs:355--355
        maps:get('removedInstance', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method disconnectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% architecture.abs:358
 %% architecture.abs:358
'm_request'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% architecture.abs:359--359
        put(vars, (get(vars))#{'res' => dataNothing}),
         %% architecture.abs:360--360
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"total request"/utf8>>,<<"QueryFlights"/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% architecture.abs:361--361
        case cmp:lt(C:get_val_internal(get(this), 'pending'),m_Param_funs:f_buffer_size(Cog,[O,DC| Stack])) of
            true ->  %% architecture.abs:362--362
            put(this, C:set_val_internal(get(this), 'nextInstance',((C:get_val_internal(get(this), 'nextInstance') + 1)  rem m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack])) )),
             %% architecture.abs:363--363
            put(vars, (get(vars))#{'selectedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),C:get_val_internal(get(this), 'nextInstance'),[O,DC| Stack])}),
             %% architecture.abs:364--364
            put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') + 1) )),
             %% architecture.abs:365--365
            put(vars, (get(vars))#{'start' => m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])}),
             %% architecture.abs:366--366
            put(vars, (get(vars))#{'req' => cog:create_task(maps:get('selectedInstance', get(vars)),'m_request',[O,maps:get('start', get(vars)),[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
             %% architecture.abs:367--367
            put(vars, (get(vars))#{'res' := { dataJust,maps:get('req', get(vars))}});
            false ->          %% architecture.abs:368--368
        T_2 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"request loss"/utf8>>,<<"QueryFlights"/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_2
        end,
         %% architecture.abs:369--369
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method request and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% architecture.abs:372
 %% architecture.abs:372
'm_removeMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% architecture.abs:372--372
        put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') - 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method removeMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
