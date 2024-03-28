-module(class_ValidateIdDeployment_ValidateIdDeployment).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"ValidateIdDeployment">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_ValidateIdDeployment_ValidateIdDeployment,'cloudProvider'=null,'prometheus'=null,'balancer'=null,'ls_ls_AuthLoadBalancerInterface'=null,'ls_AuthLoadBalancerInterface'=null,'ls_ls_ValidateIdInterface'=null,'ls_ValidateIdInterface'=null,'ls_ls_UpdateMilesInterface'=null,'ls_UpdateMilesInterface'=null,'ls_ls_UpdateProfileLoadBalancerInterface'=null,'ls_UpdateProfileLoadBalancerInterface'=null,'ls_ls_ViewProfileLoadBalancerInterface'=null,'ls_ViewProfileLoadBalancerInterface'=null,'ls_ls_GetRewardMilesLoadBalancerInterface'=null,'ls_GetRewardMilesLoadBalancerInterface'=null,'ls_ls_AuthInterface'=null,'ls_AuthInterface'=null,'ls_ls_ViewProfileInterface'=null,'ls_ViewProfileInterface'=null,'ls_ls_GetRewardMilesInterface'=null,'ls_GetRewardMilesInterface'=null,'ls_ls_CancelBookingInterface'=null,'ls_CancelBookingInterface'=null,'ls_ls_UpdateMilesLoadBalancerInterface'=null,'ls_UpdateMilesLoadBalancerInterface'=null,'ls_ls_ValidateIdLoadBalancerInterface'=null,'ls_ValidateIdLoadBalancerInterface'=null,'ls_ls_CancelBookingLoadBalancerInterface'=null,'ls_CancelBookingLoadBalancerInterface'=null,'ls_ls_UpdateProfileInterface'=null,'ls_UpdateProfileInterface'=null,'ls_ls_QueryFlightsLoadBalancerInterface'=null,'ls_QueryFlightsLoadBalancerInterface'=null,'ls_ls_BookFlightsLoadBalancerInterface'=null,'ls_BookFlightsLoadBalancerInterface'=null,'ls_ls_BookFlightsInterface'=null,'ls_BookFlightsInterface'=null,'ls_ls_QueryFlightsInterface'=null,'ls_QueryFlightsInterface'=null,'ls_ls_DeploymentComponent'=null,'ls_DeploymentComponent'=null,'waiting_time'=null}).
'init_internal'()->
    #state{}.

 %% timedsmartdepl-orchs/validateIddepl.abs:30
'get_val_internal'(#state{'cloudProvider'=G},'cloudProvider')->
    object:register_read('cloudProvider'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:30
'get_val_internal'(#state{'prometheus'=G},'prometheus')->
    object:register_read('prometheus'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:30
'get_val_internal'(#state{'balancer'=G},'balancer')->
    object:register_read('balancer'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:32
'get_val_internal'(#state{'ls_ls_AuthLoadBalancerInterface'=G},'ls_ls_AuthLoadBalancerInterface')->
    object:register_read('ls_ls_AuthLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:33
'get_val_internal'(#state{'ls_AuthLoadBalancerInterface'=G},'ls_AuthLoadBalancerInterface')->
    object:register_read('ls_AuthLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:34
'get_val_internal'(#state{'ls_ls_ValidateIdInterface'=G},'ls_ls_ValidateIdInterface')->
    object:register_read('ls_ls_ValidateIdInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:35
'get_val_internal'(#state{'ls_ValidateIdInterface'=G},'ls_ValidateIdInterface')->
    object:register_read('ls_ValidateIdInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:36
'get_val_internal'(#state{'ls_ls_UpdateMilesInterface'=G},'ls_ls_UpdateMilesInterface')->
    object:register_read('ls_ls_UpdateMilesInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:37
'get_val_internal'(#state{'ls_UpdateMilesInterface'=G},'ls_UpdateMilesInterface')->
    object:register_read('ls_UpdateMilesInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:38
'get_val_internal'(#state{'ls_ls_UpdateProfileLoadBalancerInterface'=G},'ls_ls_UpdateProfileLoadBalancerInterface')->
    object:register_read('ls_ls_UpdateProfileLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:39
'get_val_internal'(#state{'ls_UpdateProfileLoadBalancerInterface'=G},'ls_UpdateProfileLoadBalancerInterface')->
    object:register_read('ls_UpdateProfileLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:40
'get_val_internal'(#state{'ls_ls_ViewProfileLoadBalancerInterface'=G},'ls_ls_ViewProfileLoadBalancerInterface')->
    object:register_read('ls_ls_ViewProfileLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:41
'get_val_internal'(#state{'ls_ViewProfileLoadBalancerInterface'=G},'ls_ViewProfileLoadBalancerInterface')->
    object:register_read('ls_ViewProfileLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:42
'get_val_internal'(#state{'ls_ls_GetRewardMilesLoadBalancerInterface'=G},'ls_ls_GetRewardMilesLoadBalancerInterface')->
    object:register_read('ls_ls_GetRewardMilesLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:43
'get_val_internal'(#state{'ls_GetRewardMilesLoadBalancerInterface'=G},'ls_GetRewardMilesLoadBalancerInterface')->
    object:register_read('ls_GetRewardMilesLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:44
'get_val_internal'(#state{'ls_ls_AuthInterface'=G},'ls_ls_AuthInterface')->
    object:register_read('ls_ls_AuthInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:45
'get_val_internal'(#state{'ls_AuthInterface'=G},'ls_AuthInterface')->
    object:register_read('ls_AuthInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:46
'get_val_internal'(#state{'ls_ls_ViewProfileInterface'=G},'ls_ls_ViewProfileInterface')->
    object:register_read('ls_ls_ViewProfileInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:47
'get_val_internal'(#state{'ls_ViewProfileInterface'=G},'ls_ViewProfileInterface')->
    object:register_read('ls_ViewProfileInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:48
'get_val_internal'(#state{'ls_ls_GetRewardMilesInterface'=G},'ls_ls_GetRewardMilesInterface')->
    object:register_read('ls_ls_GetRewardMilesInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:49
'get_val_internal'(#state{'ls_GetRewardMilesInterface'=G},'ls_GetRewardMilesInterface')->
    object:register_read('ls_GetRewardMilesInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:50
'get_val_internal'(#state{'ls_ls_CancelBookingInterface'=G},'ls_ls_CancelBookingInterface')->
    object:register_read('ls_ls_CancelBookingInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:51
'get_val_internal'(#state{'ls_CancelBookingInterface'=G},'ls_CancelBookingInterface')->
    object:register_read('ls_CancelBookingInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:52
'get_val_internal'(#state{'ls_ls_UpdateMilesLoadBalancerInterface'=G},'ls_ls_UpdateMilesLoadBalancerInterface')->
    object:register_read('ls_ls_UpdateMilesLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:53
'get_val_internal'(#state{'ls_UpdateMilesLoadBalancerInterface'=G},'ls_UpdateMilesLoadBalancerInterface')->
    object:register_read('ls_UpdateMilesLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:54
'get_val_internal'(#state{'ls_ls_ValidateIdLoadBalancerInterface'=G},'ls_ls_ValidateIdLoadBalancerInterface')->
    object:register_read('ls_ls_ValidateIdLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:55
'get_val_internal'(#state{'ls_ValidateIdLoadBalancerInterface'=G},'ls_ValidateIdLoadBalancerInterface')->
    object:register_read('ls_ValidateIdLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:56
'get_val_internal'(#state{'ls_ls_CancelBookingLoadBalancerInterface'=G},'ls_ls_CancelBookingLoadBalancerInterface')->
    object:register_read('ls_ls_CancelBookingLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:57
'get_val_internal'(#state{'ls_CancelBookingLoadBalancerInterface'=G},'ls_CancelBookingLoadBalancerInterface')->
    object:register_read('ls_CancelBookingLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:58
'get_val_internal'(#state{'ls_ls_UpdateProfileInterface'=G},'ls_ls_UpdateProfileInterface')->
    object:register_read('ls_ls_UpdateProfileInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:59
'get_val_internal'(#state{'ls_UpdateProfileInterface'=G},'ls_UpdateProfileInterface')->
    object:register_read('ls_UpdateProfileInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:60
'get_val_internal'(#state{'ls_ls_QueryFlightsLoadBalancerInterface'=G},'ls_ls_QueryFlightsLoadBalancerInterface')->
    object:register_read('ls_ls_QueryFlightsLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:61
'get_val_internal'(#state{'ls_QueryFlightsLoadBalancerInterface'=G},'ls_QueryFlightsLoadBalancerInterface')->
    object:register_read('ls_QueryFlightsLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:62
'get_val_internal'(#state{'ls_ls_BookFlightsLoadBalancerInterface'=G},'ls_ls_BookFlightsLoadBalancerInterface')->
    object:register_read('ls_ls_BookFlightsLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:63
'get_val_internal'(#state{'ls_BookFlightsLoadBalancerInterface'=G},'ls_BookFlightsLoadBalancerInterface')->
    object:register_read('ls_BookFlightsLoadBalancerInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:64
'get_val_internal'(#state{'ls_ls_BookFlightsInterface'=G},'ls_ls_BookFlightsInterface')->
    object:register_read('ls_ls_BookFlightsInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:65
'get_val_internal'(#state{'ls_BookFlightsInterface'=G},'ls_BookFlightsInterface')->
    object:register_read('ls_BookFlightsInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:66
'get_val_internal'(#state{'ls_ls_QueryFlightsInterface'=G},'ls_ls_QueryFlightsInterface')->
    object:register_read('ls_ls_QueryFlightsInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:67
'get_val_internal'(#state{'ls_QueryFlightsInterface'=G},'ls_QueryFlightsInterface')->
    object:register_read('ls_QueryFlightsInterface'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:68
'get_val_internal'(#state{'ls_ls_DeploymentComponent'=G},'ls_ls_DeploymentComponent')->
    object:register_read('ls_ls_DeploymentComponent'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:69
'get_val_internal'(#state{'ls_DeploymentComponent'=G},'ls_DeploymentComponent')->
    object:register_read('ls_DeploymentComponent'),
    G;
 %% timedsmartdepl-orchs/validateIddepl.abs:70
'get_val_internal'(#state{'waiting_time'=G},'waiting_time')->
    object:register_read('waiting_time'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% timedsmartdepl-orchs/validateIddepl.abs:30
'set_val_internal'(S,'cloudProvider',V)->
    object:register_write('cloudProvider'),
    S#state{'cloudProvider'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:30
'set_val_internal'(S,'prometheus',V)->
    object:register_write('prometheus'),
    S#state{'prometheus'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:30
'set_val_internal'(S,'balancer',V)->
    object:register_write('balancer'),
    S#state{'balancer'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:32
'set_val_internal'(S,'ls_ls_AuthLoadBalancerInterface',V)->
    object:register_write('ls_ls_AuthLoadBalancerInterface'),
    S#state{'ls_ls_AuthLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:33
'set_val_internal'(S,'ls_AuthLoadBalancerInterface',V)->
    object:register_write('ls_AuthLoadBalancerInterface'),
    S#state{'ls_AuthLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:34
'set_val_internal'(S,'ls_ls_ValidateIdInterface',V)->
    object:register_write('ls_ls_ValidateIdInterface'),
    S#state{'ls_ls_ValidateIdInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:35
'set_val_internal'(S,'ls_ValidateIdInterface',V)->
    object:register_write('ls_ValidateIdInterface'),
    S#state{'ls_ValidateIdInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:36
'set_val_internal'(S,'ls_ls_UpdateMilesInterface',V)->
    object:register_write('ls_ls_UpdateMilesInterface'),
    S#state{'ls_ls_UpdateMilesInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:37
'set_val_internal'(S,'ls_UpdateMilesInterface',V)->
    object:register_write('ls_UpdateMilesInterface'),
    S#state{'ls_UpdateMilesInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:38
'set_val_internal'(S,'ls_ls_UpdateProfileLoadBalancerInterface',V)->
    object:register_write('ls_ls_UpdateProfileLoadBalancerInterface'),
    S#state{'ls_ls_UpdateProfileLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:39
'set_val_internal'(S,'ls_UpdateProfileLoadBalancerInterface',V)->
    object:register_write('ls_UpdateProfileLoadBalancerInterface'),
    S#state{'ls_UpdateProfileLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:40
'set_val_internal'(S,'ls_ls_ViewProfileLoadBalancerInterface',V)->
    object:register_write('ls_ls_ViewProfileLoadBalancerInterface'),
    S#state{'ls_ls_ViewProfileLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:41
'set_val_internal'(S,'ls_ViewProfileLoadBalancerInterface',V)->
    object:register_write('ls_ViewProfileLoadBalancerInterface'),
    S#state{'ls_ViewProfileLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:42
'set_val_internal'(S,'ls_ls_GetRewardMilesLoadBalancerInterface',V)->
    object:register_write('ls_ls_GetRewardMilesLoadBalancerInterface'),
    S#state{'ls_ls_GetRewardMilesLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:43
'set_val_internal'(S,'ls_GetRewardMilesLoadBalancerInterface',V)->
    object:register_write('ls_GetRewardMilesLoadBalancerInterface'),
    S#state{'ls_GetRewardMilesLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:44
'set_val_internal'(S,'ls_ls_AuthInterface',V)->
    object:register_write('ls_ls_AuthInterface'),
    S#state{'ls_ls_AuthInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:45
'set_val_internal'(S,'ls_AuthInterface',V)->
    object:register_write('ls_AuthInterface'),
    S#state{'ls_AuthInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:46
'set_val_internal'(S,'ls_ls_ViewProfileInterface',V)->
    object:register_write('ls_ls_ViewProfileInterface'),
    S#state{'ls_ls_ViewProfileInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:47
'set_val_internal'(S,'ls_ViewProfileInterface',V)->
    object:register_write('ls_ViewProfileInterface'),
    S#state{'ls_ViewProfileInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:48
'set_val_internal'(S,'ls_ls_GetRewardMilesInterface',V)->
    object:register_write('ls_ls_GetRewardMilesInterface'),
    S#state{'ls_ls_GetRewardMilesInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:49
'set_val_internal'(S,'ls_GetRewardMilesInterface',V)->
    object:register_write('ls_GetRewardMilesInterface'),
    S#state{'ls_GetRewardMilesInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:50
'set_val_internal'(S,'ls_ls_CancelBookingInterface',V)->
    object:register_write('ls_ls_CancelBookingInterface'),
    S#state{'ls_ls_CancelBookingInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:51
'set_val_internal'(S,'ls_CancelBookingInterface',V)->
    object:register_write('ls_CancelBookingInterface'),
    S#state{'ls_CancelBookingInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:52
'set_val_internal'(S,'ls_ls_UpdateMilesLoadBalancerInterface',V)->
    object:register_write('ls_ls_UpdateMilesLoadBalancerInterface'),
    S#state{'ls_ls_UpdateMilesLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:53
'set_val_internal'(S,'ls_UpdateMilesLoadBalancerInterface',V)->
    object:register_write('ls_UpdateMilesLoadBalancerInterface'),
    S#state{'ls_UpdateMilesLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:54
'set_val_internal'(S,'ls_ls_ValidateIdLoadBalancerInterface',V)->
    object:register_write('ls_ls_ValidateIdLoadBalancerInterface'),
    S#state{'ls_ls_ValidateIdLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:55
'set_val_internal'(S,'ls_ValidateIdLoadBalancerInterface',V)->
    object:register_write('ls_ValidateIdLoadBalancerInterface'),
    S#state{'ls_ValidateIdLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:56
'set_val_internal'(S,'ls_ls_CancelBookingLoadBalancerInterface',V)->
    object:register_write('ls_ls_CancelBookingLoadBalancerInterface'),
    S#state{'ls_ls_CancelBookingLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:57
'set_val_internal'(S,'ls_CancelBookingLoadBalancerInterface',V)->
    object:register_write('ls_CancelBookingLoadBalancerInterface'),
    S#state{'ls_CancelBookingLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:58
'set_val_internal'(S,'ls_ls_UpdateProfileInterface',V)->
    object:register_write('ls_ls_UpdateProfileInterface'),
    S#state{'ls_ls_UpdateProfileInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:59
'set_val_internal'(S,'ls_UpdateProfileInterface',V)->
    object:register_write('ls_UpdateProfileInterface'),
    S#state{'ls_UpdateProfileInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:60
'set_val_internal'(S,'ls_ls_QueryFlightsLoadBalancerInterface',V)->
    object:register_write('ls_ls_QueryFlightsLoadBalancerInterface'),
    S#state{'ls_ls_QueryFlightsLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:61
'set_val_internal'(S,'ls_QueryFlightsLoadBalancerInterface',V)->
    object:register_write('ls_QueryFlightsLoadBalancerInterface'),
    S#state{'ls_QueryFlightsLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:62
'set_val_internal'(S,'ls_ls_BookFlightsLoadBalancerInterface',V)->
    object:register_write('ls_ls_BookFlightsLoadBalancerInterface'),
    S#state{'ls_ls_BookFlightsLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:63
'set_val_internal'(S,'ls_BookFlightsLoadBalancerInterface',V)->
    object:register_write('ls_BookFlightsLoadBalancerInterface'),
    S#state{'ls_BookFlightsLoadBalancerInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:64
'set_val_internal'(S,'ls_ls_BookFlightsInterface',V)->
    object:register_write('ls_ls_BookFlightsInterface'),
    S#state{'ls_ls_BookFlightsInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:65
'set_val_internal'(S,'ls_BookFlightsInterface',V)->
    object:register_write('ls_BookFlightsInterface'),
    S#state{'ls_BookFlightsInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:66
'set_val_internal'(S,'ls_ls_QueryFlightsInterface',V)->
    object:register_write('ls_ls_QueryFlightsInterface'),
    S#state{'ls_ls_QueryFlightsInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:67
'set_val_internal'(S,'ls_QueryFlightsInterface',V)->
    object:register_write('ls_QueryFlightsInterface'),
    S#state{'ls_QueryFlightsInterface'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:68
'set_val_internal'(S,'ls_ls_DeploymentComponent',V)->
    object:register_write('ls_ls_DeploymentComponent'),
    S#state{'ls_ls_DeploymentComponent'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:69
'set_val_internal'(S,'ls_DeploymentComponent',V)->
    object:register_write('ls_DeploymentComponent'),
    S#state{'ls_DeploymentComponent'=V};
 %% timedsmartdepl-orchs/validateIddepl.abs:70
'set_val_internal'(S,'waiting_time',V)->
    object:register_write('waiting_time'),
    S#state{'waiting_time'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'cloudProvider', S#state.'cloudProvider' }
        , { 'prometheus', S#state.'prometheus' }
        , { 'balancer', S#state.'balancer' }
        , { 'ls_ls_AuthLoadBalancerInterface', S#state.'ls_ls_AuthLoadBalancerInterface' }
        , { 'ls_AuthLoadBalancerInterface', S#state.'ls_AuthLoadBalancerInterface' }
        , { 'ls_ls_ValidateIdInterface', S#state.'ls_ls_ValidateIdInterface' }
        , { 'ls_ValidateIdInterface', S#state.'ls_ValidateIdInterface' }
        , { 'ls_ls_UpdateMilesInterface', S#state.'ls_ls_UpdateMilesInterface' }
        , { 'ls_UpdateMilesInterface', S#state.'ls_UpdateMilesInterface' }
        , { 'ls_ls_UpdateProfileLoadBalancerInterface', S#state.'ls_ls_UpdateProfileLoadBalancerInterface' }
        , { 'ls_UpdateProfileLoadBalancerInterface', S#state.'ls_UpdateProfileLoadBalancerInterface' }
        , { 'ls_ls_ViewProfileLoadBalancerInterface', S#state.'ls_ls_ViewProfileLoadBalancerInterface' }
        , { 'ls_ViewProfileLoadBalancerInterface', S#state.'ls_ViewProfileLoadBalancerInterface' }
        , { 'ls_ls_GetRewardMilesLoadBalancerInterface', S#state.'ls_ls_GetRewardMilesLoadBalancerInterface' }
        , { 'ls_GetRewardMilesLoadBalancerInterface', S#state.'ls_GetRewardMilesLoadBalancerInterface' }
        , { 'ls_ls_AuthInterface', S#state.'ls_ls_AuthInterface' }
        , { 'ls_AuthInterface', S#state.'ls_AuthInterface' }
        , { 'ls_ls_ViewProfileInterface', S#state.'ls_ls_ViewProfileInterface' }
        , { 'ls_ViewProfileInterface', S#state.'ls_ViewProfileInterface' }
        , { 'ls_ls_GetRewardMilesInterface', S#state.'ls_ls_GetRewardMilesInterface' }
        , { 'ls_GetRewardMilesInterface', S#state.'ls_GetRewardMilesInterface' }
        , { 'ls_ls_CancelBookingInterface', S#state.'ls_ls_CancelBookingInterface' }
        , { 'ls_CancelBookingInterface', S#state.'ls_CancelBookingInterface' }
        , { 'ls_ls_UpdateMilesLoadBalancerInterface', S#state.'ls_ls_UpdateMilesLoadBalancerInterface' }
        , { 'ls_UpdateMilesLoadBalancerInterface', S#state.'ls_UpdateMilesLoadBalancerInterface' }
        , { 'ls_ls_ValidateIdLoadBalancerInterface', S#state.'ls_ls_ValidateIdLoadBalancerInterface' }
        , { 'ls_ValidateIdLoadBalancerInterface', S#state.'ls_ValidateIdLoadBalancerInterface' }
        , { 'ls_ls_CancelBookingLoadBalancerInterface', S#state.'ls_ls_CancelBookingLoadBalancerInterface' }
        , { 'ls_CancelBookingLoadBalancerInterface', S#state.'ls_CancelBookingLoadBalancerInterface' }
        , { 'ls_ls_UpdateProfileInterface', S#state.'ls_ls_UpdateProfileInterface' }
        , { 'ls_UpdateProfileInterface', S#state.'ls_UpdateProfileInterface' }
        , { 'ls_ls_QueryFlightsLoadBalancerInterface', S#state.'ls_ls_QueryFlightsLoadBalancerInterface' }
        , { 'ls_QueryFlightsLoadBalancerInterface', S#state.'ls_QueryFlightsLoadBalancerInterface' }
        , { 'ls_ls_BookFlightsLoadBalancerInterface', S#state.'ls_ls_BookFlightsLoadBalancerInterface' }
        , { 'ls_BookFlightsLoadBalancerInterface', S#state.'ls_BookFlightsLoadBalancerInterface' }
        , { 'ls_ls_BookFlightsInterface', S#state.'ls_ls_BookFlightsInterface' }
        , { 'ls_BookFlightsInterface', S#state.'ls_BookFlightsInterface' }
        , { 'ls_ls_QueryFlightsInterface', S#state.'ls_ls_QueryFlightsInterface' }
        , { 'ls_QueryFlightsInterface', S#state.'ls_QueryFlightsInterface' }
        , { 'ls_ls_DeploymentComponent', S#state.'ls_ls_DeploymentComponent' }
        , { 'ls_DeploymentComponent', S#state.'ls_DeploymentComponent' }
        , { 'waiting_time', S#state.'waiting_time' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_cloudProvider,P_prometheus,P_balancer,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'cloudProvider',P_cloudProvider)),
    put(this, C:set_val_internal(get(this),'prometheus',P_prometheus)),
    put(this, C:set_val_internal(get(this),'balancer',P_balancer)),
     %% timedsmartdepl-orchs/validateIddepl.abs:32--32
    put(this, C:set_val_internal(get(this),'ls_ls_AuthLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:33--33
    put(this, C:set_val_internal(get(this),'ls_AuthLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:34--34
    put(this, C:set_val_internal(get(this),'ls_ls_ValidateIdInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:35--35
    put(this, C:set_val_internal(get(this),'ls_ValidateIdInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:36--36
    put(this, C:set_val_internal(get(this),'ls_ls_UpdateMilesInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:37--37
    put(this, C:set_val_internal(get(this),'ls_UpdateMilesInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:38--38
    put(this, C:set_val_internal(get(this),'ls_ls_UpdateProfileLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:39--39
    put(this, C:set_val_internal(get(this),'ls_UpdateProfileLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:40--40
    put(this, C:set_val_internal(get(this),'ls_ls_ViewProfileLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:41--41
    put(this, C:set_val_internal(get(this),'ls_ViewProfileLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:42--42
    put(this, C:set_val_internal(get(this),'ls_ls_GetRewardMilesLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:43--43
    put(this, C:set_val_internal(get(this),'ls_GetRewardMilesLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:44--44
    put(this, C:set_val_internal(get(this),'ls_ls_AuthInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:45--45
    put(this, C:set_val_internal(get(this),'ls_AuthInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:46--46
    put(this, C:set_val_internal(get(this),'ls_ls_ViewProfileInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:47--47
    put(this, C:set_val_internal(get(this),'ls_ViewProfileInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:48--48
    put(this, C:set_val_internal(get(this),'ls_ls_GetRewardMilesInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:49--49
    put(this, C:set_val_internal(get(this),'ls_GetRewardMilesInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:50--50
    put(this, C:set_val_internal(get(this),'ls_ls_CancelBookingInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:51--51
    put(this, C:set_val_internal(get(this),'ls_CancelBookingInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:52--52
    put(this, C:set_val_internal(get(this),'ls_ls_UpdateMilesLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:53--53
    put(this, C:set_val_internal(get(this),'ls_UpdateMilesLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:54--54
    put(this, C:set_val_internal(get(this),'ls_ls_ValidateIdLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:55--55
    put(this, C:set_val_internal(get(this),'ls_ValidateIdLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:56--56
    put(this, C:set_val_internal(get(this),'ls_ls_CancelBookingLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:57--57
    put(this, C:set_val_internal(get(this),'ls_CancelBookingLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:58--58
    put(this, C:set_val_internal(get(this),'ls_ls_UpdateProfileInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:59--59
    put(this, C:set_val_internal(get(this),'ls_UpdateProfileInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:60--60
    put(this, C:set_val_internal(get(this),'ls_ls_QueryFlightsLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:61--61
    put(this, C:set_val_internal(get(this),'ls_QueryFlightsLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:62--62
    put(this, C:set_val_internal(get(this),'ls_ls_BookFlightsLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:63--63
    put(this, C:set_val_internal(get(this),'ls_BookFlightsLoadBalancerInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:64--64
    put(this, C:set_val_internal(get(this),'ls_ls_BookFlightsInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:65--65
    put(this, C:set_val_internal(get(this),'ls_BookFlightsInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:66--66
    put(this, C:set_val_internal(get(this),'ls_ls_QueryFlightsInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:67--67
    put(this, C:set_val_internal(get(this),'ls_QueryFlightsInterface',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:68--68
    put(this, C:set_val_internal(get(this),'ls_ls_DeploymentComponent',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:69--69
    put(this, C:set_val_internal(get(this),'ls_DeploymentComponent',[])),
     %% timedsmartdepl-orchs/validateIddepl.abs:70--70
    put(this, C:set_val_internal(get(this),'waiting_time',10)),
     %% timedsmartdepl-orchs/validateIddepl.abs:72--79
    T_1 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,100}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,2000}, { dataPair,dataMemory,375}, { dataPair,dataBandwidth,500}, { dataPair,dataSpeed,10000}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,100}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,2000}, { dataPair,dataMemory,375}, { dataPair,dataBandwidth,500}, { dataPair,dataSpeed,10000}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,100}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,2000}, { dataPair,dataMemory,375}, { dataPair,dataBandwidth,500}, { dataPair,dataSpeed,10000}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_1,
     %% timedsmartdepl-orchs/validateIddepl.abs:80--87
    T_2 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,199}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,4000}, { dataPair,dataMemory,750}, { dataPair,dataBandwidth,750}, { dataPair,dataSpeed,20000}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,199}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,4000}, { dataPair,dataMemory,750}, { dataPair,dataBandwidth,750}, { dataPair,dataSpeed,20000}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,199}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,4000}, { dataPair,dataMemory,750}, { dataPair,dataBandwidth,750}, { dataPair,dataSpeed,20000}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_2,
     %% timedsmartdepl-orchs/validateIddepl.abs:88--95
    T_3 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,398}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,8000}, { dataPair,dataMemory,1500}, { dataPair,dataBandwidth,1000}, { dataPair,dataSpeed,40000}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,398}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,8000}, { dataPair,dataMemory,1500}, { dataPair,dataBandwidth,1000}, { dataPair,dataSpeed,40000}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,398}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,8000}, { dataPair,dataMemory,1500}, { dataPair,dataBandwidth,1000}, { dataPair,dataSpeed,40000}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_3,
     %% timedsmartdepl-orchs/validateIddepl.abs:96--103
    T_4 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,796}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,16000}, { dataPair,dataMemory,3000}, { dataPair,dataBandwidth,2000}, { dataPair,dataSpeed,80000}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,796}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,16000}, { dataPair,dataMemory,3000}, { dataPair,dataBandwidth,2000}, { dataPair,dataSpeed,80000}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,796}, { dataPair,dataPaymentInterval,1}, { dataPair,dataCores,16000}, { dataPair,dataMemory,3000}, { dataPair,dataBandwidth,2000}, { dataPair,dataSpeed,80000}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_4,
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% timedsmartdepl-orchs/validateIddepl.abs:106
 %% timedsmartdepl-orchs/validateIddepl.abs:106
'm_getAuthLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:106--106
        C:get_val_internal(get(this), 'ls_AuthLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getAuthLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:107
 %% timedsmartdepl-orchs/validateIddepl.abs:107
'm_getValidateIdInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:107--107
        C:get_val_internal(get(this), 'ls_ValidateIdInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getValidateIdInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:108
 %% timedsmartdepl-orchs/validateIddepl.abs:108
'm_getUpdateMilesInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:108--108
        C:get_val_internal(get(this), 'ls_UpdateMilesInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getUpdateMilesInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:109
 %% timedsmartdepl-orchs/validateIddepl.abs:109
'm_getUpdateProfileLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:109--109
        C:get_val_internal(get(this), 'ls_UpdateProfileLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getUpdateProfileLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:110
 %% timedsmartdepl-orchs/validateIddepl.abs:110
'm_getViewProfileLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:110--110
        C:get_val_internal(get(this), 'ls_ViewProfileLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getViewProfileLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:111
 %% timedsmartdepl-orchs/validateIddepl.abs:111
'm_getGetRewardMilesLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:111--111
        C:get_val_internal(get(this), 'ls_GetRewardMilesLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getGetRewardMilesLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:112
 %% timedsmartdepl-orchs/validateIddepl.abs:112
'm_getAuthInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:112--112
        C:get_val_internal(get(this), 'ls_AuthInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getAuthInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:113
 %% timedsmartdepl-orchs/validateIddepl.abs:113
'm_getViewProfileInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:113--113
        C:get_val_internal(get(this), 'ls_ViewProfileInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getViewProfileInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:114
 %% timedsmartdepl-orchs/validateIddepl.abs:114
'm_getGetRewardMilesInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:114--114
        C:get_val_internal(get(this), 'ls_GetRewardMilesInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getGetRewardMilesInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:115
 %% timedsmartdepl-orchs/validateIddepl.abs:115
'm_getCancelBookingInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:115--115
        C:get_val_internal(get(this), 'ls_CancelBookingInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getCancelBookingInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:116
 %% timedsmartdepl-orchs/validateIddepl.abs:116
'm_getUpdateMilesLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:116--116
        C:get_val_internal(get(this), 'ls_UpdateMilesLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getUpdateMilesLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:117
 %% timedsmartdepl-orchs/validateIddepl.abs:117
'm_getValidateIdLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:117--117
        C:get_val_internal(get(this), 'ls_ValidateIdLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getValidateIdLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:118
 %% timedsmartdepl-orchs/validateIddepl.abs:118
'm_getCancelBookingLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:118--118
        C:get_val_internal(get(this), 'ls_CancelBookingLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getCancelBookingLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:119
 %% timedsmartdepl-orchs/validateIddepl.abs:119
'm_getUpdateProfileInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:119--119
        C:get_val_internal(get(this), 'ls_UpdateProfileInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getUpdateProfileInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:120
 %% timedsmartdepl-orchs/validateIddepl.abs:120
'm_getQueryFlightsLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:120--120
        C:get_val_internal(get(this), 'ls_QueryFlightsLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getQueryFlightsLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:121
 %% timedsmartdepl-orchs/validateIddepl.abs:121
'm_getBookFlightsLoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:121--121
        C:get_val_internal(get(this), 'ls_BookFlightsLoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getBookFlightsLoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:122
 %% timedsmartdepl-orchs/validateIddepl.abs:122
'm_getBookFlightsInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:122--122
        C:get_val_internal(get(this), 'ls_BookFlightsInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getBookFlightsInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:123
 %% timedsmartdepl-orchs/validateIddepl.abs:123
'm_getQueryFlightsInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:123--123
        C:get_val_internal(get(this), 'ls_QueryFlightsInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getQueryFlightsInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:124
 %% timedsmartdepl-orchs/validateIddepl.abs:124
'm_getDeploymentComponent'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:124--124
        C:get_val_internal(get(this), 'ls_DeploymentComponent')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeploymentComponent and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:126
 %% timedsmartdepl-orchs/validateIddepl.abs:126
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:127--127
        put(this, C:set_val_internal(get(this), 'ls_ls_AuthLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_AuthLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_AuthLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:128--128
        put(this, C:set_val_internal(get(this), 'ls_AuthLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:129--129
        put(this, C:set_val_internal(get(this), 'ls_ls_ValidateIdInterface',[C:get_val_internal(get(this), 'ls_ValidateIdInterface') | C:get_val_internal(get(this), 'ls_ls_ValidateIdInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:130--130
        put(this, C:set_val_internal(get(this), 'ls_ValidateIdInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:131--131
        put(this, C:set_val_internal(get(this), 'ls_ls_UpdateMilesInterface',[C:get_val_internal(get(this), 'ls_UpdateMilesInterface') | C:get_val_internal(get(this), 'ls_ls_UpdateMilesInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:132--132
        put(this, C:set_val_internal(get(this), 'ls_UpdateMilesInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:133--133
        put(this, C:set_val_internal(get(this), 'ls_ls_UpdateProfileLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_UpdateProfileLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_UpdateProfileLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:134--134
        put(this, C:set_val_internal(get(this), 'ls_UpdateProfileLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:135--135
        put(this, C:set_val_internal(get(this), 'ls_ls_ViewProfileLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_ViewProfileLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_ViewProfileLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:136--136
        put(this, C:set_val_internal(get(this), 'ls_ViewProfileLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:137--137
        put(this, C:set_val_internal(get(this), 'ls_ls_GetRewardMilesLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_GetRewardMilesLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_GetRewardMilesLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:138--138
        put(this, C:set_val_internal(get(this), 'ls_GetRewardMilesLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:139--139
        put(this, C:set_val_internal(get(this), 'ls_ls_AuthInterface',[C:get_val_internal(get(this), 'ls_AuthInterface') | C:get_val_internal(get(this), 'ls_ls_AuthInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:140--140
        put(this, C:set_val_internal(get(this), 'ls_AuthInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:141--141
        put(this, C:set_val_internal(get(this), 'ls_ls_ViewProfileInterface',[C:get_val_internal(get(this), 'ls_ViewProfileInterface') | C:get_val_internal(get(this), 'ls_ls_ViewProfileInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:142--142
        put(this, C:set_val_internal(get(this), 'ls_ViewProfileInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:143--143
        put(this, C:set_val_internal(get(this), 'ls_ls_GetRewardMilesInterface',[C:get_val_internal(get(this), 'ls_GetRewardMilesInterface') | C:get_val_internal(get(this), 'ls_ls_GetRewardMilesInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:144--144
        put(this, C:set_val_internal(get(this), 'ls_GetRewardMilesInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:145--145
        put(this, C:set_val_internal(get(this), 'ls_ls_CancelBookingInterface',[C:get_val_internal(get(this), 'ls_CancelBookingInterface') | C:get_val_internal(get(this), 'ls_ls_CancelBookingInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:146--146
        put(this, C:set_val_internal(get(this), 'ls_CancelBookingInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:147--147
        put(this, C:set_val_internal(get(this), 'ls_ls_UpdateMilesLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_UpdateMilesLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_UpdateMilesLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:148--148
        put(this, C:set_val_internal(get(this), 'ls_UpdateMilesLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:149--149
        put(this, C:set_val_internal(get(this), 'ls_ls_ValidateIdLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_ValidateIdLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_ValidateIdLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:150--150
        put(this, C:set_val_internal(get(this), 'ls_ValidateIdLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:151--151
        put(this, C:set_val_internal(get(this), 'ls_ls_CancelBookingLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_CancelBookingLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_CancelBookingLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:152--152
        put(this, C:set_val_internal(get(this), 'ls_CancelBookingLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:153--153
        put(this, C:set_val_internal(get(this), 'ls_ls_UpdateProfileInterface',[C:get_val_internal(get(this), 'ls_UpdateProfileInterface') | C:get_val_internal(get(this), 'ls_ls_UpdateProfileInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:154--154
        put(this, C:set_val_internal(get(this), 'ls_UpdateProfileInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:155--155
        put(this, C:set_val_internal(get(this), 'ls_ls_QueryFlightsLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_QueryFlightsLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_QueryFlightsLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:156--156
        put(this, C:set_val_internal(get(this), 'ls_QueryFlightsLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:157--157
        put(this, C:set_val_internal(get(this), 'ls_ls_BookFlightsLoadBalancerInterface',[C:get_val_internal(get(this), 'ls_BookFlightsLoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_BookFlightsLoadBalancerInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:158--158
        put(this, C:set_val_internal(get(this), 'ls_BookFlightsLoadBalancerInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:159--159
        put(this, C:set_val_internal(get(this), 'ls_ls_BookFlightsInterface',[C:get_val_internal(get(this), 'ls_BookFlightsInterface') | C:get_val_internal(get(this), 'ls_ls_BookFlightsInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:160--160
        put(this, C:set_val_internal(get(this), 'ls_BookFlightsInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:161--161
        put(this, C:set_val_internal(get(this), 'ls_ls_QueryFlightsInterface',[C:get_val_internal(get(this), 'ls_QueryFlightsInterface') | C:get_val_internal(get(this), 'ls_ls_QueryFlightsInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:162--162
        put(this, C:set_val_internal(get(this), 'ls_QueryFlightsInterface',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:163--163
        put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',[C:get_val_internal(get(this), 'ls_DeploymentComponent') | C:get_val_internal(get(this), 'ls_ls_DeploymentComponent')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:164--164
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[])),
         %% timedsmartdepl-orchs/validateIddepl.abs:165--165
        T_1 = (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_deploy_aux'(Callee,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_deploy_aux'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_deploy_aux',[[]],#task_info{method= <<"deploy_aux"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:168
 %% timedsmartdepl-orchs/validateIddepl.abs:168
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:169--169
        case (not cmp:eq(C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[])) of
            true ->  %% timedsmartdepl-orchs/validateIddepl.abs:170--170
            T_1 = (fun() -> case O of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_undeploy_aux'(Callee,[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    State=get(this),
                    Vars=get(vars),
                    cog:object_state_changed(Cog, O, State),
                    put(this,cog:get_object_state(Callee#object.cog, Callee)),
                    put(task_info,(get(task_info))#task_info{this=Callee}),
                    T=object:get_class_from_state(get(this)), % it's the callee state already
                    Result=T:'m_undeploy_aux'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_undeploy_aux',[[]],#task_info{method= <<"undeploy_aux"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_1,
             %% timedsmartdepl-orchs/validateIddepl.abs:171--171
            put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:172--172
            put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:173--173
            put(this, C:set_val_internal(get(this), 'ls_AuthLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_AuthLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:174--174
            put(this, C:set_val_internal(get(this), 'ls_ValidateIdInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ValidateIdInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:175--175
            put(this, C:set_val_internal(get(this), 'ls_UpdateMilesInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_UpdateMilesInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:176--176
            put(this, C:set_val_internal(get(this), 'ls_UpdateProfileLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_UpdateProfileLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:177--177
            put(this, C:set_val_internal(get(this), 'ls_ViewProfileLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ViewProfileLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:178--178
            put(this, C:set_val_internal(get(this), 'ls_GetRewardMilesLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_GetRewardMilesLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:179--179
            put(this, C:set_val_internal(get(this), 'ls_AuthInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_AuthInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:180--180
            put(this, C:set_val_internal(get(this), 'ls_ViewProfileInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ViewProfileInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:181--181
            put(this, C:set_val_internal(get(this), 'ls_GetRewardMilesInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_GetRewardMilesInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:182--182
            put(this, C:set_val_internal(get(this), 'ls_CancelBookingInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_CancelBookingInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:183--183
            put(this, C:set_val_internal(get(this), 'ls_UpdateMilesLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_UpdateMilesLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:184--184
            put(this, C:set_val_internal(get(this), 'ls_ValidateIdLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ValidateIdLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:185--185
            put(this, C:set_val_internal(get(this), 'ls_CancelBookingLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_CancelBookingLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:186--186
            put(this, C:set_val_internal(get(this), 'ls_UpdateProfileInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_UpdateProfileInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:187--187
            put(this, C:set_val_internal(get(this), 'ls_QueryFlightsLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_QueryFlightsLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:188--188
            put(this, C:set_val_internal(get(this), 'ls_BookFlightsLoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_BookFlightsLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:189--189
            put(this, C:set_val_internal(get(this), 'ls_BookFlightsInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_BookFlightsInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:190--190
            put(this, C:set_val_internal(get(this), 'ls_QueryFlightsInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_QueryFlightsInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:191--191
            put(this, C:set_val_internal(get(this), 'ls_ls_AuthLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_AuthLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:192--192
            put(this, C:set_val_internal(get(this), 'ls_ls_ValidateIdInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ValidateIdInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:193--193
            put(this, C:set_val_internal(get(this), 'ls_ls_UpdateMilesInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_UpdateMilesInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:194--194
            put(this, C:set_val_internal(get(this), 'ls_ls_UpdateProfileLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_UpdateProfileLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:195--195
            put(this, C:set_val_internal(get(this), 'ls_ls_ViewProfileLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ViewProfileLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:196--196
            put(this, C:set_val_internal(get(this), 'ls_ls_GetRewardMilesLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_GetRewardMilesLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:197--197
            put(this, C:set_val_internal(get(this), 'ls_ls_AuthInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_AuthInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:198--198
            put(this, C:set_val_internal(get(this), 'ls_ls_ViewProfileInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ViewProfileInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:199--199
            put(this, C:set_val_internal(get(this), 'ls_ls_GetRewardMilesInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_GetRewardMilesInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:200--200
            put(this, C:set_val_internal(get(this), 'ls_ls_CancelBookingInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_CancelBookingInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:201--201
            put(this, C:set_val_internal(get(this), 'ls_ls_UpdateMilesLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_UpdateMilesLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:202--202
            put(this, C:set_val_internal(get(this), 'ls_ls_ValidateIdLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ValidateIdLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:203--203
            put(this, C:set_val_internal(get(this), 'ls_ls_CancelBookingLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_CancelBookingLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:204--204
            put(this, C:set_val_internal(get(this), 'ls_ls_UpdateProfileInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_UpdateProfileInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:205--205
            put(this, C:set_val_internal(get(this), 'ls_ls_QueryFlightsLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_QueryFlightsLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:206--206
            put(this, C:set_val_internal(get(this), 'ls_ls_BookFlightsLoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_BookFlightsLoadBalancerInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:207--207
            put(this, C:set_val_internal(get(this), 'ls_ls_BookFlightsInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_BookFlightsInterface'),[O,DC| Stack]))),
             %% timedsmartdepl-orchs/validateIddepl.abs:208--208
            put(this, C:set_val_internal(get(this), 'ls_ls_QueryFlightsInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_QueryFlightsInterface'),[O,DC| Stack])));
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:213
 %% timedsmartdepl-orchs/validateIddepl.abs:213
'm_deploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:214--214
        put(vars, (get(vars))#{'speedPatchMap' => m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack])}),
         %% timedsmartdepl-orchs/validateIddepl.abs:215--215
        put(vars, (get(vars))#{'c4_large_0' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% timedsmartdepl-orchs/validateIddepl.abs:216--216
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_0', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:217--217
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),0,[O,DC| Stack])}),
         %% timedsmartdepl-orchs/validateIddepl.abs:219--219
        put(vars, (get(vars))#{'odefault___ValidateId_0_c4_large_0' => object:new(cog:start(Cog,maps:get('c4_large_0', get(vars))),class_Architecture_ValidateId,[C:get_val_internal(get(this), 'prometheus'),[]],Cog,[O,DC| Stack])}),
         %% timedsmartdepl-orchs/validateIddepl.abs:220--220
        put(vars, (get(vars))#{'coreRequired_odefault___ValidateId_0_c4_large_0' => 1877}),
         %% timedsmartdepl-orchs/validateIddepl.abs:221--221
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___ValidateId_0_c4_large_0', get(vars)))) ,[O,DC| Stack])}),
         %% timedsmartdepl-orchs/validateIddepl.abs:222--222
        put(this, C:set_val_internal(get(this), 'ls_ValidateIdInterface',[maps:get('odefault___ValidateId_0_c4_large_0', get(vars)) | C:get_val_internal(get(this), 'ls_ValidateIdInterface')])),
         %% timedsmartdepl-orchs/validateIddepl.abs:223--223
        T_1 = cog:create_task(O,'m_patchSpeed',[maps:get('speedPatchMap', get(vars)),[]],#task_info{method= <<"patchSpeed"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% timedsmartdepl-orchs/validateIddepl.abs:224--224
        T_2 = (fun() -> case C:get_val_internal(get(this), 'balancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___ValidateId_0_c4_large_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___ValidateId_0_c4_large_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___ValidateId_0_c4_large_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy_aux and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:227
 %% timedsmartdepl-orchs/validateIddepl.abs:227
'm_undeploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:228--228
        put(vars, (get(vars))#{'odefault___ValidateId_0_c4_large_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_ValidateIdInterface'),0,[O,DC| Stack])}),
         %% timedsmartdepl-orchs/validateIddepl.abs:229--229
        T_1 = (fun() -> case C:get_val_internal(get(this), 'balancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% timedsmartdepl-orchs/validateIddepl.abs:230--230
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% timedsmartdepl-orchs/validateIddepl.abs:231--231
                T_2 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_shutdownInstance'(Callee,m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_instance = m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_shutdownInstance'(Callee, V_instance,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_shutdownInstance',[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),[]],#task_info{method= <<"shutdownInstance"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_2,
                 %% timedsmartdepl-orchs/validateIddepl.abs:232--232
                put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]))),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy_aux and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timedsmartdepl-orchs/validateIddepl.abs:236
 %% timedsmartdepl-orchs/validateIddepl.abs:236
'm_patchSpeed'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% timedsmartdepl-orchs/validateIddepl.abs:237--250
        put(vars, (get(vars))#{'tmp1106536762' => m_ABS_StdLib_funs:f_entries(Cog,maps:get('dcs', get(vars)),[O,DC| Stack])}),
         %% timedsmartdepl-orchs/validateIddepl.abs:237--250
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1106536762', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% timedsmartdepl-orchs/validateIddepl.abs:237--250
                put(vars, (get(vars))#{'entry' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1106536762', get(vars)),[O,DC| Stack])}),
                 %% timedsmartdepl-orchs/validateIddepl.abs:237--250
                put(vars, (get(vars))#{'tmp1106536762' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1106536762', get(vars)),[O,DC| Stack])}),
                 %% timedsmartdepl-orchs/validateIddepl.abs:238--238
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_fst(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% timedsmartdepl-orchs/validateIddepl.abs:239--239
                put(vars, (get(vars))#{'coreUsed' => m_ABS_StdLib_funs:f_snd(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% timedsmartdepl-orchs/validateIddepl.abs:240--240
                put(vars, (get(vars))#{'tmp2047785987' => cog:create_task(maps:get('dc', get(vars)),'m_total',[dataSpeed,[]],#task_info{method= <<"total"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% timedsmartdepl-orchs/validateIddepl.abs:240--240
                future:await(maps:get('tmp2047785987', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% timedsmartdepl-orchs/validateIddepl.abs:240--240
                put(vars, (get(vars))#{'speed_aux' => future:get_blocking(maps:get('tmp2047785987', get(vars)), Cog, [O,DC| Stack])}),
                 %% timedsmartdepl-orchs/validateIddepl.abs:241--244
                put(vars, (get(vars))#{'total_speed' => begin
                    case maps:get('speed_aux', get(vars)) of
                        
                        {dataFin,V_x_0}->V_x_0;
                        _->-1
                    end
                end}),
                 %% timedsmartdepl-orchs/validateIddepl.abs:245--245
                case (not cmp:eq(maps:get('total_speed', get(vars)),-1)) of
                    true ->  %% timedsmartdepl-orchs/validateIddepl.abs:246--246
                    put(vars, (get(vars))#{'tmp118136684' => cog:create_task(maps:get('dc', get(vars)),'m_getNumberOfCores',[[]],#task_info{method= <<"getNumberOfCores"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                     %% timedsmartdepl-orchs/validateIddepl.abs:246--246
                    future:await(maps:get('tmp118136684', get(vars)), Cog, [O,DC| Stack]),
                    ok,
                     %% timedsmartdepl-orchs/validateIddepl.abs:246--246
                    put(vars, (get(vars))#{'totalCore' => future:get_blocking(maps:get('tmp118136684', get(vars)), Cog, [O,DC| Stack])}),
                     %% timedsmartdepl-orchs/validateIddepl.abs:247--247
                    put(vars, (get(vars))#{'speedPerCore' =>  rationals:rdiv(maps:get('total_speed', get(vars)),maps:get('totalCore', get(vars))) }),
                     %% timedsmartdepl-orchs/validateIddepl.abs:248--248
                    T_1 = cog:create_task(maps:get('dc', get(vars)),'m_decrementResources',[( rationals:sub(maps:get('total_speed', get(vars)),( rationals:mul(maps:get('speedPerCore', get(vars)),maps:get('coreUsed', get(vars)))) )) ,dataSpeed,[]],#task_info{method= <<"decrementResources"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                    T_1;
                    false ->                 ok
                end,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method patchSpeed and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.