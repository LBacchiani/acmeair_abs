-module(class_Architecture_BookFlightsLoadBalancer).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"BookFlightsLoadBalancerInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Architecture_BookFlightsLoadBalancer,'prometheus'=null,'instancesConnected'=null,'pending'=null,'nextInstance'=null}).
'init_internal'()->
    #state{}.

 %% architecture.abs:247
'get_val_internal'(#state{'prometheus'=G},'prometheus')->
    object:register_read('prometheus'),
    G;
 %% architecture.abs:248
'get_val_internal'(#state{'instancesConnected'=G},'instancesConnected')->
    object:register_read('instancesConnected'),
    G;
 %% architecture.abs:249
'get_val_internal'(#state{'pending'=G},'pending')->
    object:register_read('pending'),
    G;
 %% architecture.abs:250
'get_val_internal'(#state{'nextInstance'=G},'nextInstance')->
    object:register_read('nextInstance'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% architecture.abs:247
'set_val_internal'(S,'prometheus',V)->
    object:register_write('prometheus'),
    S#state{'prometheus'=V};
 %% architecture.abs:248
'set_val_internal'(S,'instancesConnected',V)->
    object:register_write('instancesConnected'),
    S#state{'instancesConnected'=V};
 %% architecture.abs:249
'set_val_internal'(S,'pending',V)->
    object:register_write('pending'),
    S#state{'pending'=V};
 %% architecture.abs:250
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
     %% architecture.abs:248--248
    put(this, C:set_val_internal(get(this),'instancesConnected',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% architecture.abs:249--249
    put(this, C:set_val_internal(get(this),'pending',0)),
     %% architecture.abs:250--250
    put(this, C:set_val_internal(get(this),'nextInstance',-1)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% architecture.abs:252
 %% architecture.abs:252
'm_connectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_newInstance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'newInstance' => V_newInstance_0 }),
    try
         %% architecture.abs:253--253
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('newInstance', get(vars)),[O,DC| Stack]))),
         %% architecture.abs:254--254
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"instances"/utf8>>,<<"BookFlights"/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% architecture.abs:257
 %% architecture.abs:257
'm_disconnectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% architecture.abs:258--258
        put(vars, (get(vars))#{'removedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]) - 1) ,[O,DC| Stack])}),
         %% architecture.abs:259--259
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_without(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('removedInstance', get(vars)),[O,DC| Stack]))),
         %% architecture.abs:260--260
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"instances"/utf8>>,<<"BookFlights"/utf8>>,-1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% architecture.abs:261--261
        maps:get('removedInstance', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method disconnectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% architecture.abs:264
 %% architecture.abs:264
'm_request'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% architecture.abs:265--265
        put(vars, (get(vars))#{'res' => dataNothing}),
         %% architecture.abs:266--266
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"total request"/utf8>>,<<"BookFlights"/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% architecture.abs:267--267
        case cmp:lt(C:get_val_internal(get(this), 'pending'),m_Param_funs:f_buffer_size(Cog,[O,DC| Stack])) of
            true ->  %% architecture.abs:268--268
            put(this, C:set_val_internal(get(this), 'nextInstance',((C:get_val_internal(get(this), 'nextInstance') + 1)  rem m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack])) )),
             %% architecture.abs:269--269
            put(vars, (get(vars))#{'selectedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),C:get_val_internal(get(this), 'nextInstance'),[O,DC| Stack])}),
             %% architecture.abs:270--270
            put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') + 1) )),
             %% architecture.abs:271--271
            put(vars, (get(vars))#{'start' => m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])}),
             %% architecture.abs:272--272
            put(vars, (get(vars))#{'req' => cog:create_task(maps:get('selectedInstance', get(vars)),'m_request',[O,maps:get('start', get(vars)),[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
             %% architecture.abs:273--273
            put(vars, (get(vars))#{'res' := { dataJust,maps:get('req', get(vars))}});
            false ->          %% architecture.abs:274--274
        T_2 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"request loss"/utf8>>,<<"BookFlights"/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_2
        end,
         %% architecture.abs:275--275
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method request and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% architecture.abs:278
 %% architecture.abs:278
'm_removeMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% architecture.abs:278--278
        put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') - 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method removeMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
