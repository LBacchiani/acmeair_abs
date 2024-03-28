-module(m_Param_funs).
-compile(export_all).
-include_lib("../include/abs_types.hrl").

'f_time_unit_to_sec'(Cog=#cog{ref=CogRef},Stack)->
    1.

'f_monitoring_window'(Cog=#cog{ref=CogRef},Stack)->
    ( rationals:mul(5,m_Param_funs:f_time_unit_to_sec(Cog,Stack))) .

'f_user_generation_window'(Cog=#cog{ref=CogRef},Stack)->
    ( rationals:mul(5,m_Param_funs:f_time_unit_to_sec(Cog,Stack))) .

'f_buffer_size'(Cog=#cog{ref=CogRef},Stack)->
    10.

'f_speed_per_core'(Cog=#cog{ref=CogRef},Stack)->
    5.

'f_simulation_duration'(Cog=#cog{ref=CogRef},Stack)->
    ( rationals:mul(m_Param_funs:f_time_unit_to_sec(Cog,Stack),2000)) .

'f_scale'(Cog=#cog{ref=CogRef},Stack)->
    200.

'f_metrics'(Cog=#cog{ref=CogRef},Stack)->
    m_ABS_StdLib_funs:f_list(Cog,[ <<"latency"/utf8>>, <<"total request"/utf8>>, <<"request loss"/utf8>>, <<"waiting"/utf8>>, <<"completed"/utf8>>, <<"instances"/utf8>>] ,Stack).

'f_services'(Cog=#cog{ref=CogRef},Stack)->
    m_ABS_StdLib_funs:f_list(Cog,[ <<"CancelBooking"/utf8>>, <<"GetRewardMiles"/utf8>>, <<"UpdateMiles"/utf8>>, <<"BookFlights"/utf8>>, <<"QueryFlights"/utf8>>, <<"ViewProfile"/utf8>>, <<"UpdateProfile"/utf8>>, <<"Auth"/utf8>>, <<"ValidateId"/utf8>>] ,Stack).

'f_metric_for_scaling'(Cog=#cog{ref=CogRef},Stack)->
    <<"MCL"/utf8>>.

'f_latency_threshold'(Cog=#cog{ref=CogRef},Stack)->
    m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,<<"CancelBooking"/utf8>>,m_Param_funs:f_cancel_booking_service_time(Cog,Stack)}, { dataPair,<<"UpdateMiles"/utf8>>,m_Param_funs:f_update_miles_service_time(Cog,Stack)}, { dataPair,<<"BookFlights"/utf8>>,m_Param_funs:f_book_service_time(Cog,Stack)}, { dataPair,<<"QueryFlights"/utf8>>,m_Param_funs:f_query_service_time(Cog,Stack)}, { dataPair,<<"ViewProfile"/utf8>>,m_Param_funs:f_view_service_time(Cog,Stack)}, { dataPair,<<"UpdateProfile"/utf8>>,m_Param_funs:f_update_profile_service_time(Cog,Stack)}, { dataPair,<<"Auth"/utf8>>,m_Param_funs:f_auth_service_time(Cog,Stack)}, { dataPair,<<"ValidateId"/utf8>>,m_Param_funs:f_validate_id_service_time(Cog,Stack)}, { dataPair,<<"GetRewardMiles"/utf8>>,m_Param_funs:f_get_reward_miles_service_time(Cog,Stack)}] ,Stack).

'f_cancel_booking_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,726)) ,10) .

'f_cancel_booking_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_cancel_booking_service_time(Cog,Stack)) .

'f_get_reward_miles_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,318)) ,10) .

'f_get_reward_miles_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_get_reward_miles_service_time(Cog,Stack)) .

'f_update_miles_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,275)) ,10) .

'f_update_miles_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_update_miles_service_time(Cog,Stack)) .

'f_book_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,568)) ,10) .

'f_book_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_book_service_time(Cog,Stack)) .

'f_query_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,1015)) ,10) .

'f_query_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_query_service_time(Cog,Stack)) .

'f_view_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,928)) ,10) .

'f_view_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_view_service_time(Cog,Stack)) .

'f_update_profile_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,1246)) ,10) .

'f_update_profile_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_update_profile_service_time(Cog,Stack)) .

'f_auth_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,1037)) ,10) .

'f_auth_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_auth_service_time(Cog,Stack)) .

'f_validate_id_service_time'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(( rationals:mul( rationals:rdiv(1,1000) ,523)) ,10) .

'f_validate_id_MCL'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(1,m_Param_funs:f_validate_id_service_time(Cog,Stack)) .

'f_serviceMCLs'(Cog=#cog{ref=CogRef},Stack)->
    m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,<<"CancelBooking"/utf8>>,m_Param_funs:f_cancel_booking_MCL(Cog,Stack)}, { dataPair,<<"UpdateMiles"/utf8>>,m_Param_funs:f_update_miles_MCL(Cog,Stack)}, { dataPair,<<"BookFlights"/utf8>>,m_Param_funs:f_book_MCL(Cog,Stack)}, { dataPair,<<"QueryFlights"/utf8>>,m_Param_funs:f_query_MCL(Cog,Stack)}, { dataPair,<<"ViewProfile"/utf8>>,m_Param_funs:f_view_MCL(Cog,Stack)}, { dataPair,<<"UpdateProfile"/utf8>>,m_Param_funs:f_update_profile_MCL(Cog,Stack)}, { dataPair,<<"Auth"/utf8>>,m_Param_funs:f_auth_MCL(Cog,Stack)}, { dataPair,<<"ValidateId"/utf8>>,m_Param_funs:f_validate_id_MCL(Cog,Stack)}, { dataPair,<<"GetRewardMiles"/utf8>>,m_Param_funs:f_get_reward_miles_MCL(Cog,Stack)}] ,Stack).

'f_factorial'(Cog=#cog{ref=CogRef},V_x_0,Stack)->
    case cmp:eq(V_x_0,0) of
        true -> 1;
        false -> ( rationals:mul(V_x_0,m_Param_funs:f_factorial(Cog,( rationals:sub(V_x_0,1)) ,Stack))) 
    end.

'f_sin_shape_accuracy'(Cog=#cog{ref=CogRef},Stack)->
    10.

'f_pi'(Cog=#cog{ref=CogRef},Stack)->
     rationals:rdiv(22,7) .

'f_round'(Cog=#cog{ref=CogRef},V_x_0,Stack)->
    case cmp:gt(( rationals:sub(V_x_0,builtin:truncate(Cog,V_x_0))) , rationals:rdiv(1,2) ) of
        true -> (builtin:truncate(Cog,V_x_0) + 1) ;
        false -> builtin:truncate(Cog,V_x_0)
    end.

