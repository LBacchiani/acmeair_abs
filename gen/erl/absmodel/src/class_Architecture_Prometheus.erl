-module(class_Architecture_Prometheus).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"PrometheusInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Architecture_Prometheus,'latencies'=null,'msg_losses'=null,'total_req'=null,'completed'=null,'instances'=null,'completed_global'=null,'request_global'=null}).
'init_internal'()->
    #state{}.

 %% architecture.abs:653
'get_val_internal'(#state{'latencies'=G},'latencies')->
    object:register_read('latencies'),
    G;
 %% architecture.abs:654
'get_val_internal'(#state{'msg_losses'=G},'msg_losses')->
    object:register_read('msg_losses'),
    G;
 %% architecture.abs:655
'get_val_internal'(#state{'total_req'=G},'total_req')->
    object:register_read('total_req'),
    G;
 %% architecture.abs:656
'get_val_internal'(#state{'completed'=G},'completed')->
    object:register_read('completed'),
    G;
 %% architecture.abs:657
'get_val_internal'(#state{'instances'=G},'instances')->
    object:register_read('instances'),
    G;
 %% architecture.abs:658
'get_val_internal'(#state{'completed_global'=G},'completed_global')->
    object:register_read('completed_global'),
    G;
 %% architecture.abs:659
'get_val_internal'(#state{'request_global'=G},'request_global')->
    object:register_read('request_global'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% architecture.abs:653
'set_val_internal'(S,'latencies',V)->
    object:register_write('latencies'),
    S#state{'latencies'=V};
 %% architecture.abs:654
'set_val_internal'(S,'msg_losses',V)->
    object:register_write('msg_losses'),
    S#state{'msg_losses'=V};
 %% architecture.abs:655
'set_val_internal'(S,'total_req',V)->
    object:register_write('total_req'),
    S#state{'total_req'=V};
 %% architecture.abs:656
'set_val_internal'(S,'completed',V)->
    object:register_write('completed'),
    S#state{'completed'=V};
 %% architecture.abs:657
'set_val_internal'(S,'instances',V)->
    object:register_write('instances'),
    S#state{'instances'=V};
 %% architecture.abs:658
'set_val_internal'(S,'completed_global',V)->
    object:register_write('completed_global'),
    S#state{'completed_global'=V};
 %% architecture.abs:659
'set_val_internal'(S,'request_global',V)->
    object:register_write('request_global'),
    S#state{'request_global'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'latencies', S#state.'latencies' }
        , { 'msg_losses', S#state.'msg_losses' }
        , { 'total_req', S#state.'total_req' }
        , { 'completed', S#state.'completed' }
        , { 'instances', S#state.'instances' }
        , { 'completed_global', S#state.'completed_global' }
        , { 'request_global', S#state.'request_global' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
     %% architecture.abs:653--653
    put(this, C:set_val_internal(get(this),'latencies',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% architecture.abs:654--654
    put(this, C:set_val_internal(get(this),'msg_losses',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% architecture.abs:655--655
    put(this, C:set_val_internal(get(this),'total_req',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% architecture.abs:656--656
    put(this, C:set_val_internal(get(this),'completed',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% architecture.abs:657--657
    put(this, C:set_val_internal(get(this),'instances',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% architecture.abs:658--658
    put(this, C:set_val_internal(get(this),'completed_global',0)),
     %% architecture.abs:659--659
    put(this, C:set_val_internal(get(this),'request_global',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% architecture.abs:661
 %% architecture.abs:661
'm_init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_metric_0,V_key_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'metric' => V_metric_0,
 'key' => V_key_0 }),
    try
         %% architecture.abs:662--662
        case cmp:eq(maps:get('metric', get(vars)),<<"latency"/utf8>>) of
            true ->  %% architecture.abs:662--662
            put(this, C:set_val_internal(get(this), 'latencies',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'latencies'),maps:get('key', get(vars)),0,[O,DC| Stack])));
            false ->          %% architecture.abs:663--663
        case cmp:eq(maps:get('metric', get(vars)),<<"request loss"/utf8>>) of
            true ->  %% architecture.abs:663--663
            put(this, C:set_val_internal(get(this), 'msg_losses',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'msg_losses'),maps:get('key', get(vars)),0,[O,DC| Stack])));
            false ->          %% architecture.abs:664--664
        case cmp:eq(maps:get('metric', get(vars)),<<"total request"/utf8>>) of
            true ->  %% architecture.abs:664--664
            put(this, C:set_val_internal(get(this), 'total_req',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'total_req'),maps:get('key', get(vars)),0,[O,DC| Stack])));
            false ->          %% architecture.abs:665--665
        case cmp:eq(maps:get('metric', get(vars)),<<"completed"/utf8>>) of
            true ->  %% architecture.abs:665--665
            put(this, C:set_val_internal(get(this), 'completed',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'completed'),maps:get('key', get(vars)),0,[O,DC| Stack])));
            false ->          %% architecture.abs:666--666
        case cmp:eq(maps:get('metric', get(vars)),<<"completed global"/utf8>>) of
            true ->  %% architecture.abs:666--666
            put(this, C:set_val_internal(get(this), 'completed_global',0));
            false ->          %% architecture.abs:667--667
        case cmp:eq(maps:get('metric', get(vars)),<<"request global"/utf8>>) of
            true ->  %% architecture.abs:667--667
            put(this, C:set_val_internal(get(this), 'request_global',0));
            false ->          %% architecture.abs:668--668
        case cmp:eq(maps:get('metric', get(vars)),<<"instances"/utf8>>) of
            true ->  %% architecture.abs:668--668
            put(this, C:set_val_internal(get(this), 'instances',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'instances'),maps:get('key', get(vars)),0,[O,DC| Stack])));
            false ->         ok
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
            io:format(standard_error, "Uncaught ~s in method init and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% architecture.abs:671
 %% architecture.abs:671
'm_push'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_metric_0,V_key_0,V_val_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'metric' => V_metric_0,
 'key' => V_key_0,
 'val' => V_val_0 }),
    try
         %% architecture.abs:672--672
        case cmp:eq(maps:get('metric', get(vars)),<<"latency"/utf8>>) of
            true ->  %% architecture.abs:673--673
            put(vars, (get(vars))#{'latency' => m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'latencies'),maps:get('key', get(vars)),[O,DC| Stack])}),
             %% architecture.abs:674--674
            put(vars, (get(vars))#{'latency' := ( rationals:add(maps:get('latency', get(vars)),maps:get('val', get(vars)))) }),
             %% architecture.abs:675--675
            put(this, C:set_val_internal(get(this), 'latencies',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'latencies'),maps:get('key', get(vars)),maps:get('latency', get(vars)),[O,DC| Stack])));
            false ->          %% architecture.abs:676--676
        case cmp:eq(maps:get('metric', get(vars)),<<"request loss"/utf8>>) of
            true ->  %% architecture.abs:677--677
            put(vars, (get(vars))#{'loss' => m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'msg_losses'),maps:get('key', get(vars)),[O,DC| Stack])}),
             %% architecture.abs:678--678
            put(vars, (get(vars))#{'loss' := ( rationals:add(maps:get('loss', get(vars)),maps:get('val', get(vars)))) }),
             %% architecture.abs:679--679
            put(this, C:set_val_internal(get(this), 'msg_losses',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'msg_losses'),maps:get('key', get(vars)),maps:get('loss', get(vars)),[O,DC| Stack])));
            false ->          %% architecture.abs:680--680
        case cmp:eq(maps:get('metric', get(vars)),<<"total request"/utf8>>) of
            true ->  %% architecture.abs:681--681
            put(vars, (get(vars))#{'req' => m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'total_req'),maps:get('key', get(vars)),[O,DC| Stack])}),
             %% architecture.abs:682--682
            put(vars, (get(vars))#{'req' := ( rationals:add(maps:get('req', get(vars)),maps:get('val', get(vars)))) }),
             %% architecture.abs:683--683
            put(this, C:set_val_internal(get(this), 'total_req',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'total_req'),maps:get('key', get(vars)),maps:get('req', get(vars)),[O,DC| Stack])));
            false ->          %% architecture.abs:684--684
        case cmp:eq(maps:get('metric', get(vars)),<<"completed"/utf8>>) of
            true ->  %% architecture.abs:685--685
            put(vars, (get(vars))#{'c' => m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'completed'),maps:get('key', get(vars)),[O,DC| Stack])}),
             %% architecture.abs:686--686
            put(vars, (get(vars))#{'c' := ( rationals:add(maps:get('c', get(vars)),maps:get('val', get(vars)))) }),
             %% architecture.abs:687--687
            put(this, C:set_val_internal(get(this), 'completed',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'completed'),maps:get('key', get(vars)),maps:get('c', get(vars)),[O,DC| Stack])));
            false ->          %% architecture.abs:688--688
        case cmp:eq(maps:get('metric', get(vars)),<<"completed global"/utf8>>) of
            true ->  %% architecture.abs:689--689
            put(this, C:set_val_internal(get(this), 'completed_global',( rationals:add(C:get_val_internal(get(this), 'completed_global'),maps:get('val', get(vars)))) ));
            false ->          %% architecture.abs:690--690
        case cmp:eq(maps:get('metric', get(vars)),<<"request global"/utf8>>) of
            true ->  %% architecture.abs:691--691
            put(this, C:set_val_internal(get(this), 'request_global',( rationals:add(C:get_val_internal(get(this), 'request_global'),maps:get('val', get(vars)))) ));
            false ->          %% architecture.abs:692--692
        case cmp:eq(maps:get('metric', get(vars)),<<"instances"/utf8>>) of
            true ->  %% architecture.abs:693--693
            put(vars, (get(vars))#{'req' => m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'instances'),maps:get('key', get(vars)),[O,DC| Stack])}),
             %% architecture.abs:694--694
            put(vars, (get(vars))#{'req' := ( rationals:add(maps:get('req', get(vars)),maps:get('val', get(vars)))) }),
             %% architecture.abs:695--695
            put(this, C:set_val_internal(get(this), 'instances',m_ABS_StdLib_funs:f_put(Cog,C:get_val_internal(get(this), 'instances'),maps:get('key', get(vars)),maps:get('req', get(vars)),[O,DC| Stack])));
            false ->         ok
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
            io:format(standard_error, "Uncaught ~s in method push and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% architecture.abs:699
 %% architecture.abs:699
'm_getV'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_metric_0,V_key_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'metric' => V_metric_0,
 'key' => V_key_0 }),
    try
         %% architecture.abs:700--700
        put(vars, (get(vars))#{'toRet' => 0}),
         %% architecture.abs:701--701
        case cmp:eq(maps:get('metric', get(vars)),<<"latency"/utf8>>) of
            true ->  %% architecture.abs:701--701
            put(vars, (get(vars))#{'toRet' := m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'latencies'),maps:get('key', get(vars)),[O,DC| Stack])});
            false ->          %% architecture.abs:702--702
        case cmp:eq(maps:get('metric', get(vars)),<<"request loss"/utf8>>) of
            true ->  %% architecture.abs:702--702
            put(vars, (get(vars))#{'toRet' := m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'msg_losses'),maps:get('key', get(vars)),[O,DC| Stack])});
            false ->          %% architecture.abs:703--703
        case cmp:eq(maps:get('metric', get(vars)),<<"total request"/utf8>>) of
            true ->  %% architecture.abs:703--703
            put(vars, (get(vars))#{'toRet' := m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'total_req'),maps:get('key', get(vars)),[O,DC| Stack])});
            false ->          %% architecture.abs:704--704
        case cmp:eq(maps:get('metric', get(vars)),<<"completed"/utf8>>) of
            true ->  %% architecture.abs:704--704
            put(vars, (get(vars))#{'toRet' := m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'completed'),maps:get('key', get(vars)),[O,DC| Stack])});
            false ->          %% architecture.abs:705--705
        case cmp:eq(maps:get('metric', get(vars)),<<"completed global"/utf8>>) of
            true ->  %% architecture.abs:705--705
            put(vars, (get(vars))#{'toRet' := C:get_val_internal(get(this), 'completed_global')});
            false ->          %% architecture.abs:706--706
        case cmp:eq(maps:get('metric', get(vars)),<<"request global"/utf8>>) of
            true ->  %% architecture.abs:706--706
            put(vars, (get(vars))#{'toRet' := C:get_val_internal(get(this), 'request_global')});
            false ->          %% architecture.abs:707--707
        case cmp:eq(maps:get('metric', get(vars)),<<"instances"/utf8>>) of
            true ->  %% architecture.abs:707--707
            put(vars, (get(vars))#{'toRet' := m_ABS_StdLib_funs:f_lookupUnsafe(Cog,C:get_val_internal(get(this), 'instances'),maps:get('key', get(vars)),[O,DC| Stack])});
            false ->         ok
        end
        end
        end
        end
        end
        end
        end,
         %% architecture.abs:708--708
        case (not cmp:eq(maps:get('metric', get(vars)),<<"instances"/utf8>>)) of
            true ->  %% architecture.abs:708--708
            T_1 = (fun() -> case O of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_init'(Callee,maps:get('metric', get(vars)),maps:get('key', get(vars)),[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    V_metric = maps:get('metric', get(vars)),
                    V_key = maps:get('key', get(vars)),
                    State=get(this),
                    Vars=get(vars),
                    cog:object_state_changed(Cog, O, State),
                    put(this,cog:get_object_state(Callee#object.cog, Callee)),
                    put(task_info,(get(task_info))#task_info{this=Callee}),
                    T=object:get_class_from_state(get(this)), % it's the callee state already
                    Result=T:'m_init'(Callee, V_metric, V_key,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_init',[maps:get('metric', get(vars)),maps:get('key', get(vars)),[]],#task_info{method= <<"init"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_1;
            false ->         ok
        end,
         %% architecture.abs:709--709
        maps:get('toRet', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getV and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
