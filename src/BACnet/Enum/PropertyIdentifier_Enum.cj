public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum PropertyIdentifier_Enum <: IFromUInt32<PropertyIdentifier_Enum> & IToUInt32 & ToString & IFromString<PropertyIdentifier_Enum> {
    | acked_transitions // (0)
    | ack_required // (1)
    | action // (2)
    | action_text // (3)
    | active_text // (4)
    | active_vt_sessions // (5)
    | alarm_value // (6)
    | alarm_values // (7)
    | all // (8)
    | all_writes_successful // (9)
    | apdu_segment_timeout // (10)
    | apdu_timeout // (11)
    | application_software_version // (12)
    | archive // (13)
    | bias // (14)
    | change_of_state_count // (15)
    | change_of_state_time // (16)
    | notification_class // (17)
    | controlled_variable_reference // (19)
    | controlled_variable_units // (20)
    | controlled_variable_value // (21)
    | cov_increment // (22)
    | date_list // (23)
    | daylight_savings_status // (24)
    | deadband // (25)
    | derivative_constant // (26)
    | derivative_constant_units // (27)
    | description // (28)
    | description_of_halt // (29)
    | device_address_binding // (30)
    | device_type // (31)
    | effective_period // (32)
    | elapsed_active_time // (33)
    | error_limit // (34)
    | event_enable // (35)
    | event_state // (36)
    | event_type // (37)
    | exception_schedule // (38)
    | fault_values // (39)
    | feedback_value // (40)
    | file_access_method // (41)
    | file_size // (42)
    | file_type // (43)
    | firmware_revision // (44)
    | high_limit // (45)
    | inactive_text // (46)
    | in_process // (47)
    | instance_of // (48)
    | integral_constant // (49)
    | integral_constant_units // (50)
    | issue_confirmed_notifications // (51)
    | limit_enable // (52)
    | list_of_group_members // (53)
    | list_of_object_property_references // (54)
    | list_of_session_keys // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | local_date // (56)
    | local_time // (57)
    | location // (58)
    | low_limit // (59)
    | manipulated_variable_reference // (60)
    | maximum_output // (61)
    | max_apdu_length_accepted // (62)
    | max_info_frames // (63)
    | max_master // (64)
    | max_pres_value // (65)
    | minimum_off_time // (66)
    | minimum_on_time // (67)
    | minimum_output // (68)
    | min_pres_value // (69)
    | model_name // (70)
    | modification_date // (71)
    | notify_type // (72)
    | number_of_apdu_retries // (73)
    | number_of_states // (74)
    | object_identifier // (75)
    | object_list // (76)
    | object_name // (77)
    | object_property_reference // (78)
    | object_type // (79)
    | optional // (80)
    | out_of_service // (81)
    | output_units // (82)
    | event_parameters // (83)
    | polarity // (84)
    | present_value // (85)
    | priority // (86)
    | priority_array // (87)
    | priority_for_writing // (88)
    | process_identifier // (89)
    | program_change // (90)
    | program_location // (91)
    | program_state // (92)
    | proportional_constant // (93)
    | proportional_constant_units // (94)
    | protocol_conformance_class // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | protocol_object_types_supported // (96)
    | protocol_services_supported // (97)
    | protocol_version // (98)
    | read_only // (99)
    | reason_for_halt // (100)
    | recipient // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | recipient_list // (102)
    | reliability // (103)
    | relinquish_default // (104)
    | required // (105)
    | resolution // (106)
    | segmentation_supported // (107)
    | setpoint // (108)
    | setpoint_reference // (109)
    | state_text // (110)
    | status_flags // (111)
    | system_status // (112)
    | time_delay // (113)
    | time_of_active_time_reset // (114)
    | time_of_state_count_reset // (115)
    | time_synchronization_recipients // (116)
    | units // (117)
    | update_interval // (118)
    | utc_offset // (119)
    | vendor_identifier // (120)
    | vendor_name // (121)
    | vt_classes_supported // (122)
    | weekly_schedule // (123)
    | attempted_samples // (124)
    | average_value // (125)
    | buffer_size // (126)
    | client_cov_increment // (127)
    | cov_resubscription_interval // (128)
    | current_notify_time // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | event_time_stamps // (130)
    | log_buffer // (131)
    | log_device_object_property // (132)
    | enable // (133)
    | log_interval // (134)
    | maximum_value // (135)
    | minimum_value // (136)
    | notification_threshold // (137)
    | previous_notify_time // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | protocol_revision // (139)
    | records_since_notification // (140)
    | record_count // (141)
    | start_time // (142)
    | stop_time // (143)
    | stop_when_full // (144)
    | total_record_count // (145)
    | valid_samples // (146)
    | window_interval // (147)
    | window_samples // (148)
    | maximum_value_timestamp // (149)
    | minimum_value_timestamp // (150)
    | variance_value // (151)
    | active_cov_subscriptions // (152)
    | backup_failure_timeout // (153)
    | configuration_files // (154)
    | database_revision // (155)
    | direct_reading // (156)
    | last_restore_time // (157)
    | maintenance_required // (158)
    | member_of // (159)
    | mode // (160)
    | operation_expected // (161)
    | setting // (162)
    | silenced // (163)
    | tracking_value // (164)
    | zone_members // (165)
    | life_safety_alarm_values // (166)
    | max_segments_accepted // (167)
    | profile_name // (168)
    | auto_slave_discovery // (169)
    | manual_slave_address_binding // (170)
    | slave_address_binding // (171)
    | slave_proxy_enable // (172)
    | last_notify_record // (173)
    | schedule_default // (174)
    | accepted_modes // (175)
    | adjust_value // (176)
    | count // (177)
    | count_before_change // (178)
    | count_change_time // (179)
    | cov_period // (180)
    | input_reference // (181)
    | limit_monitoring_interval // (182)
    | logging_object // (183)
    | logging_record // (184)
    | prescale // (185)
    | pulse_rate // (186)
    | scale // (187)
    | scale_factor // (188)
    | update_time // (189)
    | value_before_change // (190)
    | value_set // (191)
    | value_change_time // (192)
    | align_intervals // (193)
    | interval_offset // (195)
    | last_restart_reason // (196)
    | logging_type // (197)
    | restart_notification_recipients // (202)
    | time_of_device_restart // (203)
    | time_synchronization_interval // (204)
    | trigger // (205)
    | utc_time_synchronization_recipients // (206)
    | node_subtype // (207)
    | node_type // (208)
    | structured_object_list // (209)
    | subordinate_annotations // (210)
    | subordinate_list // (211)
    | actual_shed_level // (212)
    | duty_window // (213)
    | expected_shed_level // (214)
    | full_duty_baseline // (215)
    | requested_shed_level // (218)
    | shed_duration // (219)
    | shed_level_descriptions // (220)
    | shed_levels // (221)
    | state_description // (222)
    | door_alarm_state // (226)
    | door_extended_pulse_time // (227)
    | door_members // (228)
    | door_open_too_long_time // (229)
    | door_pulse_time // (230)
    | door_status // (231)
    | door_unlock_delay_time // (232)
    | lock_status // (233)
    | masked_alarm_values // (234)
    | secured_status // (235)
    | absentee_limit // (244)
    | access_alarm_events // (245)
    | access_doors // (246)
    | access_event // (247)
    | access_event_authentication_factor // (248)
    | access_event_credential // (249)
    | access_event_time // (250)
    | access_transaction_events // (251)
    | accompaniment // (252)
    | accompaniment_time // (253)
    | activation_time // (254)
    | active_authentication_policy // (255)
    | assigned_access_rights // (256)
    | authentication_factors // (257)
    | authentication_policy_list // (258)
    | authentication_policy_names // (259)
    | authentication_status // (260)
    | authorization_mode // (261)
    | belongs_to // (262)
    | credential_disable // (263)
    | credential_status // (264)
    | credentials // (265)
    | credentials_in_zone // (266)
    | days_remaining // (267)
    | entry_points // (268)
    | exit_points // (269)
    | expiration_time // (270)
    | extended_time_enable // (271)
    | failed_attempt_events // (272)
    | failed_attempts // (273)
    | failed_attempts_time // (274)
    | last_access_event // (275)
    | last_access_point // (276)
    | last_credential_added // (277)
    | last_credential_added_time // (278)
    | last_credential_removed // (279)
    | last_credential_removed_time // (280)
    | last_use_time // (281)
    | lockout // (282)
    | lockout_relinquish_time // (283)
    | master_exemption // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | max_failed_attempts // (285)
    | members // (286)
    | muster_point // (287)
    | negative_access_rules // (288)
    | number_of_authentication_policies // (289)
    | occupancy_count // (290)
    | occupancy_count_adjust // (291)
    | occupancy_count_enable // (292)
    | occupancy_exemption // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | occupancy_lower_limit // (294)
    | occupancy_lower_limit_enforced // (295)
    | occupancy_state // (296)
    | occupancy_upper_limit // (297)
    | occupancy_upper_limit_enforced // (298)
    | passback_exemption // 已在协议中删除(removed)，此处保留旧版本标记作兼容
    | passback_mode // (300)
    | passback_timeout // (301)
    | positive_access_rules // (302)
    | reason_for_disable // (303)
    | supported_formats // (304)
    | supported_format_classes // (305)
    | threat_authority // (306)
    | threat_level // (307)
    | trace_flag // (308)
    | transaction_notification_class // (309)
    | user_external_identifier // (310)
    | user_information_reference // (311)
    | user_name // (317)
    | user_type // (318)
    | uses_remaining // (319)
    | zone_from // (320)
    | zone_to // (321)
    | access_event_tag // (322)
    | global_identifier // (323)
    | verification_time // (326)
    | backup_and_restore_state // (338)
    | backup_preparation_time // (339)
    | restore_completion_time // (340)
    | restore_preparation_time // (341)
    | bit_mask // (342)
    | bit_text // (343)
    | is_utc // (344)
    | group_members // (345)
    | group_member_names // (346)
    | member_status_flags // (347)
    | requested_update_interval // (348)
    | covu_period // (349)
    | covu_recipients // (350)
    | event_message_texts // (351)
    | event_message_texts_config // (352)
    | event_detection_enable // (353)
    | event_algorithm_inhibit // (354)
    | event_algorithm_inhibit_ref // (355)
    | time_delay_normal // (356)
    | reliability_evaluation_inhibit // (357)
    | fault_parameters // (358)
    | fault_type // (359)
    | local_forwarding_only // (360)
    | process_identifier_filter // (361)
    | subscribed_recipients // (362)
    | port_filter // (363)
    | authorization_exemptions // (364)
    | allow_group_delay_inhibit // (365)
    | channel_number // (366)
    | control_groups // (367)
    | execution_delay // (368)
    | last_priority // (369)
    | write_status // (370)
    | property_list // (371)
    | serial_number // (372)
    | blink_warn_enable // (373)
    | default_fade_time // (374)
    | default_ramp_rate // (375)
    | default_step_increment // (376)
    | egress_time // (377)
    | in_progress // (378)
    | instantaneous_power // (379)
    | lighting_command // (380)
    | lighting_command_default_priority // (381)
    | max_actual_value // (382)
    | min_actual_value // (383)
    | power // (384)
    | transition // (385)
    | egress_active // (386)
    | interface_value // (387)
    | fault_high_limit // (388)
    | fault_low_limit // (389)
    | low_diff_limit // (390)
    | strike_count // (391)
    | time_of_strike_count_reset // (392)
    | default_timeout // (393)
    | initial_timeout // (394)
    | last_state_change // (395)
    | state_change_values // (396)
    | timer_running // (397)
    | timer_state // (398)
    | apdu_length // (399)
    | ip_address // (400)
    | ip_default_gateway // (401)
    | ip_dhcp_enable // (402)
    | ip_dhcp_lease_time // (403)
    | ip_dhcp_lease_time_remaining // (404)
    | ip_dhcp_server // (405)
    | ip_dns_server // (406)
    | bacnet_ip_global_address // (407)
    | bacnet_ip_mode // (408)
    | bacnet_ip_multicast_address // (409)
    | bacnet_ip_nat_traversal // (410)
    | ip_subnet_mask // (411)
    | bacnet_ip_udp_port // (412)
    | bbmd_accept_fd_registrations // (413)
    | bbmd_broadcast_distribution_table // (414)
    | bbmd_foreign_device_table // (415)
    | changes_pending // (416)
    | command // (417)
    | fd_bbmd_address // (418)
    | fd_subscription_lifetime // (419)
    | link_speed // (420)
    | link_speeds // (421)
    | link_speed_autonegotiate // (422)
    | mac_address // (423)
    | network_interface_name // (424)
    | network_number // (425)
    | network_number_quality // (426)
    | network_type // (427)
    | routing_table // (428)
    | virtual_mac_address_table // (429)
    | command_time_array // (430)
    | current_command_priority // (431)
    | last_command_time // (432)
    | value_source // (433)
    | value_source_array // (434)
    | bacnet_ipv6_mode // (435)
    | ipv6_address // (436)
    | ipv6_prefix_length // (437)
    | bacnet_ipv6_udp_port // (438)
    | ipv6_default_gateway // (439)
    | bacnet_ipv6_multicast_address // (440)
    | ipv6_dns_server // (441)
    | ipv6_auto_addressing_enable // (442)
    | ipv6_dhcp_lease_time // (443)
    | ipv6_dhcp_lease_time_remaining // (444)
    | ipv6_dhcp_server // (445)
    | ipv6_zone_index // (446)
    | assigned_landing_calls // (447)
    | car_assigned_direction // (448)
    | car_door_command // (449)
    | car_door_status // (450)
    | car_door_text // (451)
    | car_door_zone // (452)
    | car_drive_status // (453)
    | car_load // (454)
    | car_load_units // (455)
    | car_mode // (456)
    | car_moving_direction // (457)
    | car_position // (458)
    | elevator_group // (459)
    | energy_meter // (460)
    | energy_meter_ref // (461)
    | escalator_mode // (462)
    | fault_signals // (463)
    | floor_text // (464)
    | group_id // (465)
    | group_mode // (467)
    | higher_deck // (468)
    | installation_id // (469)
    | landing_calls // (470)
    | landing_call_control // (471)
    | landing_door_status // (472)
    | lower_deck // (473)
    | machine_room_id // (474)
    | making_car_call // (475)
    | next_stopping_floor // (476)
    | operation_direction // (477)
    | passenger_alarm // (478)
    | power_mode // (479)
    | registered_car_call // (480)
    | active_cov_multiple_subscriptions // (481)
    | protocol_level // (482)
    | reference_port // (483)
    | deployed_profile_location // (484)
    | profile_location // (485)
    | tags // (486)
    | subordinate_node_types // (487)
    | subordinate_tags // (488)
    | subordinate_relationships // (489)
    | default_subordinate_relationship // (490)
    | represents // (491)
    | default_present_value // (492)
    | present_stage // (493)
    | stages // (494)
    | stage_names // (495)
    | target_references // (496)
    | audit_source_reporter // (497)
    | audit_level // (498)
    | audit_notification_recipient // (499)
    | auditable_priority_filter // (500)
    | auditable_operations // (501)
    | delete_on_forward // (502)
    | maximum_send_delay // (503)
    | monitored_objects // (504)
    | send_now // (505)
    | floor_number // (506)
    | device_uuid // (507)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): PropertyIdentifier_Enum {
        match (arg_tag) {
            case 0 => PropertyIdentifier_Enum.acked_transitions
            case 1 => PropertyIdentifier_Enum.ack_required
            case 2 => PropertyIdentifier_Enum.action
            case 3 => PropertyIdentifier_Enum.action_text
            case 4 => PropertyIdentifier_Enum.active_text
            case 5 => PropertyIdentifier_Enum.active_vt_sessions
            case 6 => PropertyIdentifier_Enum.alarm_value
            case 7 => PropertyIdentifier_Enum.alarm_values
            case 8 => PropertyIdentifier_Enum.all
            case 9 => PropertyIdentifier_Enum.all_writes_successful
            case 10 => PropertyIdentifier_Enum.apdu_segment_timeout
            case 11 => PropertyIdentifier_Enum.apdu_timeout
            case 12 => PropertyIdentifier_Enum.application_software_version
            case 13 => PropertyIdentifier_Enum.archive
            case 14 => PropertyIdentifier_Enum.bias
            case 15 => PropertyIdentifier_Enum.change_of_state_count
            case 16 => PropertyIdentifier_Enum.change_of_state_time
            case 17 => PropertyIdentifier_Enum.notification_class
            case 19 => PropertyIdentifier_Enum.controlled_variable_reference
            case 20 => PropertyIdentifier_Enum.controlled_variable_units
            case 21 => PropertyIdentifier_Enum.controlled_variable_value
            case 22 => PropertyIdentifier_Enum.cov_increment
            case 23 => PropertyIdentifier_Enum.date_list
            case 24 => PropertyIdentifier_Enum.daylight_savings_status
            case 25 => PropertyIdentifier_Enum.deadband
            case 26 => PropertyIdentifier_Enum.derivative_constant
            case 27 => PropertyIdentifier_Enum.derivative_constant_units
            case 28 => PropertyIdentifier_Enum.description
            case 29 => PropertyIdentifier_Enum.description_of_halt
            case 30 => PropertyIdentifier_Enum.device_address_binding
            case 31 => PropertyIdentifier_Enum.device_type
            case 32 => PropertyIdentifier_Enum.effective_period
            case 33 => PropertyIdentifier_Enum.elapsed_active_time
            case 34 => PropertyIdentifier_Enum.error_limit
            case 35 => PropertyIdentifier_Enum.event_enable
            case 36 => PropertyIdentifier_Enum.event_state
            case 37 => PropertyIdentifier_Enum.event_type
            case 38 => PropertyIdentifier_Enum.exception_schedule
            case 39 => PropertyIdentifier_Enum.fault_values
            case 40 => PropertyIdentifier_Enum.feedback_value
            case 41 => PropertyIdentifier_Enum.file_access_method
            case 42 => PropertyIdentifier_Enum.file_size
            case 43 => PropertyIdentifier_Enum.file_type
            case 44 => PropertyIdentifier_Enum.firmware_revision
            case 45 => PropertyIdentifier_Enum.high_limit
            case 46 => PropertyIdentifier_Enum.inactive_text
            case 47 => PropertyIdentifier_Enum.in_process
            case 48 => PropertyIdentifier_Enum.instance_of
            case 49 => PropertyIdentifier_Enum.integral_constant
            case 50 => PropertyIdentifier_Enum.integral_constant_units
            case 51 => PropertyIdentifier_Enum.issue_confirmed_notifications
            case 52 => PropertyIdentifier_Enum.limit_enable
            case 53 => PropertyIdentifier_Enum.list_of_group_members
            case 54 => PropertyIdentifier_Enum.list_of_object_property_references
            case 55 => PropertyIdentifier_Enum.list_of_session_keys
            case 56 => PropertyIdentifier_Enum.local_date
            case 57 => PropertyIdentifier_Enum.local_time
            case 58 => PropertyIdentifier_Enum.location
            case 59 => PropertyIdentifier_Enum.low_limit
            case 60 => PropertyIdentifier_Enum.manipulated_variable_reference
            case 61 => PropertyIdentifier_Enum.maximum_output
            case 62 => PropertyIdentifier_Enum.max_apdu_length_accepted
            case 63 => PropertyIdentifier_Enum.max_info_frames
            case 64 => PropertyIdentifier_Enum.max_master
            case 65 => PropertyIdentifier_Enum.max_pres_value
            case 66 => PropertyIdentifier_Enum.minimum_off_time
            case 67 => PropertyIdentifier_Enum.minimum_on_time
            case 68 => PropertyIdentifier_Enum.minimum_output
            case 69 => PropertyIdentifier_Enum.min_pres_value
            case 70 => PropertyIdentifier_Enum.model_name
            case 71 => PropertyIdentifier_Enum.modification_date
            case 72 => PropertyIdentifier_Enum.notify_type
            case 73 => PropertyIdentifier_Enum.number_of_apdu_retries
            case 74 => PropertyIdentifier_Enum.number_of_states
            case 75 => PropertyIdentifier_Enum.object_identifier
            case 76 => PropertyIdentifier_Enum.object_list
            case 77 => PropertyIdentifier_Enum.object_name
            case 78 => PropertyIdentifier_Enum.object_property_reference
            case 79 => PropertyIdentifier_Enum.object_type
            case 80 => PropertyIdentifier_Enum.optional
            case 81 => PropertyIdentifier_Enum.out_of_service
            case 82 => PropertyIdentifier_Enum.output_units
            case 83 => PropertyIdentifier_Enum.event_parameters
            case 84 => PropertyIdentifier_Enum.polarity
            case 85 => PropertyIdentifier_Enum.present_value
            case 86 => PropertyIdentifier_Enum.priority
            case 87 => PropertyIdentifier_Enum.priority_array
            case 88 => PropertyIdentifier_Enum.priority_for_writing
            case 89 => PropertyIdentifier_Enum.process_identifier
            case 90 => PropertyIdentifier_Enum.program_change
            case 91 => PropertyIdentifier_Enum.program_location
            case 92 => PropertyIdentifier_Enum.program_state
            case 93 => PropertyIdentifier_Enum.proportional_constant
            case 94 => PropertyIdentifier_Enum.proportional_constant_units
            case 95 => PropertyIdentifier_Enum.protocol_conformance_class
            case 96 => PropertyIdentifier_Enum.protocol_object_types_supported
            case 97 => PropertyIdentifier_Enum.protocol_services_supported
            case 98 => PropertyIdentifier_Enum.protocol_version
            case 99 => PropertyIdentifier_Enum.read_only
            case 100 => PropertyIdentifier_Enum.reason_for_halt
            case 101 => PropertyIdentifier_Enum.recipient
            case 102 => PropertyIdentifier_Enum.recipient_list
            case 103 => PropertyIdentifier_Enum.reliability
            case 104 => PropertyIdentifier_Enum.relinquish_default
            case 105 => PropertyIdentifier_Enum.required
            case 106 => PropertyIdentifier_Enum.resolution
            case 107 => PropertyIdentifier_Enum.segmentation_supported
            case 108 => PropertyIdentifier_Enum.setpoint
            case 109 => PropertyIdentifier_Enum.setpoint_reference
            case 110 => PropertyIdentifier_Enum.state_text
            case 111 => PropertyIdentifier_Enum.status_flags
            case 112 => PropertyIdentifier_Enum.system_status
            case 113 => PropertyIdentifier_Enum.time_delay
            case 114 => PropertyIdentifier_Enum.time_of_active_time_reset
            case 115 => PropertyIdentifier_Enum.time_of_state_count_reset
            case 116 => PropertyIdentifier_Enum.time_synchronization_recipients
            case 117 => PropertyIdentifier_Enum.units
            case 118 => PropertyIdentifier_Enum.update_interval
            case 119 => PropertyIdentifier_Enum.utc_offset
            case 120 => PropertyIdentifier_Enum.vendor_identifier
            case 121 => PropertyIdentifier_Enum.vendor_name
            case 122 => PropertyIdentifier_Enum.vt_classes_supported
            case 123 => PropertyIdentifier_Enum.weekly_schedule
            case 124 => PropertyIdentifier_Enum.attempted_samples
            case 125 => PropertyIdentifier_Enum.average_value
            case 126 => PropertyIdentifier_Enum.buffer_size
            case 127 => PropertyIdentifier_Enum.client_cov_increment
            case 128 => PropertyIdentifier_Enum.cov_resubscription_interval
            case 129 => PropertyIdentifier_Enum.current_notify_time
            case 130 => PropertyIdentifier_Enum.event_time_stamps
            case 131 => PropertyIdentifier_Enum.log_buffer
            case 132 => PropertyIdentifier_Enum.log_device_object_property
            case 133 => PropertyIdentifier_Enum.enable
            case 134 => PropertyIdentifier_Enum.log_interval
            case 135 => PropertyIdentifier_Enum.maximum_value
            case 136 => PropertyIdentifier_Enum.minimum_value
            case 137 => PropertyIdentifier_Enum.notification_threshold
            case 138 => PropertyIdentifier_Enum.previous_notify_time
            case 139 => PropertyIdentifier_Enum.protocol_revision
            case 140 => PropertyIdentifier_Enum.records_since_notification
            case 141 => PropertyIdentifier_Enum.record_count
            case 142 => PropertyIdentifier_Enum.start_time
            case 143 => PropertyIdentifier_Enum.stop_time
            case 144 => PropertyIdentifier_Enum.stop_when_full
            case 145 => PropertyIdentifier_Enum.total_record_count
            case 146 => PropertyIdentifier_Enum.valid_samples
            case 147 => PropertyIdentifier_Enum.window_interval
            case 148 => PropertyIdentifier_Enum.window_samples
            case 149 => PropertyIdentifier_Enum.maximum_value_timestamp
            case 150 => PropertyIdentifier_Enum.minimum_value_timestamp
            case 151 => PropertyIdentifier_Enum.variance_value
            case 152 => PropertyIdentifier_Enum.active_cov_subscriptions
            case 153 => PropertyIdentifier_Enum.backup_failure_timeout
            case 154 => PropertyIdentifier_Enum.configuration_files
            case 155 => PropertyIdentifier_Enum.database_revision
            case 156 => PropertyIdentifier_Enum.direct_reading
            case 157 => PropertyIdentifier_Enum.last_restore_time
            case 158 => PropertyIdentifier_Enum.maintenance_required
            case 159 => PropertyIdentifier_Enum.member_of
            case 160 => PropertyIdentifier_Enum.mode
            case 161 => PropertyIdentifier_Enum.operation_expected
            case 162 => PropertyIdentifier_Enum.setting
            case 163 => PropertyIdentifier_Enum.silenced
            case 164 => PropertyIdentifier_Enum.tracking_value
            case 165 => PropertyIdentifier_Enum.zone_members
            case 166 => PropertyIdentifier_Enum.life_safety_alarm_values
            case 167 => PropertyIdentifier_Enum.max_segments_accepted
            case 168 => PropertyIdentifier_Enum.profile_name
            case 169 => PropertyIdentifier_Enum.auto_slave_discovery
            case 170 => PropertyIdentifier_Enum.manual_slave_address_binding
            case 171 => PropertyIdentifier_Enum.slave_address_binding
            case 172 => PropertyIdentifier_Enum.slave_proxy_enable
            case 173 => PropertyIdentifier_Enum.last_notify_record
            case 174 => PropertyIdentifier_Enum.schedule_default
            case 175 => PropertyIdentifier_Enum.accepted_modes
            case 176 => PropertyIdentifier_Enum.adjust_value
            case 177 => PropertyIdentifier_Enum.count
            case 178 => PropertyIdentifier_Enum.count_before_change
            case 179 => PropertyIdentifier_Enum.count_change_time
            case 180 => PropertyIdentifier_Enum.cov_period
            case 181 => PropertyIdentifier_Enum.input_reference
            case 182 => PropertyIdentifier_Enum.limit_monitoring_interval
            case 183 => PropertyIdentifier_Enum.logging_object
            case 184 => PropertyIdentifier_Enum.logging_record
            case 185 => PropertyIdentifier_Enum.prescale
            case 186 => PropertyIdentifier_Enum.pulse_rate
            case 187 => PropertyIdentifier_Enum.scale
            case 188 => PropertyIdentifier_Enum.scale_factor
            case 189 => PropertyIdentifier_Enum.update_time
            case 190 => PropertyIdentifier_Enum.value_before_change
            case 191 => PropertyIdentifier_Enum.value_set
            case 192 => PropertyIdentifier_Enum.value_change_time
            case 193 => PropertyIdentifier_Enum.align_intervals
            case 195 => PropertyIdentifier_Enum.interval_offset
            case 196 => PropertyIdentifier_Enum.last_restart_reason
            case 197 => PropertyIdentifier_Enum.logging_type
            case 202 => PropertyIdentifier_Enum.restart_notification_recipients
            case 203 => PropertyIdentifier_Enum.time_of_device_restart
            case 204 => PropertyIdentifier_Enum.time_synchronization_interval
            case 205 => PropertyIdentifier_Enum.trigger
            case 206 => PropertyIdentifier_Enum.utc_time_synchronization_recipients
            case 207 => PropertyIdentifier_Enum.node_subtype
            case 208 => PropertyIdentifier_Enum.node_type
            case 209 => PropertyIdentifier_Enum.structured_object_list
            case 210 => PropertyIdentifier_Enum.subordinate_annotations
            case 211 => PropertyIdentifier_Enum.subordinate_list
            case 212 => PropertyIdentifier_Enum.actual_shed_level
            case 213 => PropertyIdentifier_Enum.duty_window
            case 214 => PropertyIdentifier_Enum.expected_shed_level
            case 215 => PropertyIdentifier_Enum.full_duty_baseline
            case 218 => PropertyIdentifier_Enum.requested_shed_level
            case 219 => PropertyIdentifier_Enum.shed_duration
            case 220 => PropertyIdentifier_Enum.shed_level_descriptions
            case 221 => PropertyIdentifier_Enum.shed_levels
            case 222 => PropertyIdentifier_Enum.state_description
            case 226 => PropertyIdentifier_Enum.door_alarm_state
            case 227 => PropertyIdentifier_Enum.door_extended_pulse_time
            case 228 => PropertyIdentifier_Enum.door_members
            case 229 => PropertyIdentifier_Enum.door_open_too_long_time
            case 230 => PropertyIdentifier_Enum.door_pulse_time
            case 231 => PropertyIdentifier_Enum.door_status
            case 232 => PropertyIdentifier_Enum.door_unlock_delay_time
            case 233 => PropertyIdentifier_Enum.lock_status
            case 234 => PropertyIdentifier_Enum.masked_alarm_values
            case 235 => PropertyIdentifier_Enum.secured_status
            case 244 => PropertyIdentifier_Enum.absentee_limit
            case 245 => PropertyIdentifier_Enum.access_alarm_events
            case 246 => PropertyIdentifier_Enum.access_doors
            case 247 => PropertyIdentifier_Enum.access_event
            case 248 => PropertyIdentifier_Enum.access_event_authentication_factor
            case 249 => PropertyIdentifier_Enum.access_event_credential
            case 250 => PropertyIdentifier_Enum.access_event_time
            case 251 => PropertyIdentifier_Enum.access_transaction_events
            case 252 => PropertyIdentifier_Enum.accompaniment
            case 253 => PropertyIdentifier_Enum.accompaniment_time
            case 254 => PropertyIdentifier_Enum.activation_time
            case 255 => PropertyIdentifier_Enum.active_authentication_policy
            case 256 => PropertyIdentifier_Enum.assigned_access_rights
            case 257 => PropertyIdentifier_Enum.authentication_factors
            case 258 => PropertyIdentifier_Enum.authentication_policy_list
            case 259 => PropertyIdentifier_Enum.authentication_policy_names
            case 260 => PropertyIdentifier_Enum.authentication_status
            case 261 => PropertyIdentifier_Enum.authorization_mode
            case 262 => PropertyIdentifier_Enum.belongs_to
            case 263 => PropertyIdentifier_Enum.credential_disable
            case 264 => PropertyIdentifier_Enum.credential_status
            case 265 => PropertyIdentifier_Enum.credentials
            case 266 => PropertyIdentifier_Enum.credentials_in_zone
            case 267 => PropertyIdentifier_Enum.days_remaining
            case 268 => PropertyIdentifier_Enum.entry_points
            case 269 => PropertyIdentifier_Enum.exit_points
            case 270 => PropertyIdentifier_Enum.expiration_time
            case 271 => PropertyIdentifier_Enum.extended_time_enable
            case 272 => PropertyIdentifier_Enum.failed_attempt_events
            case 273 => PropertyIdentifier_Enum.failed_attempts
            case 274 => PropertyIdentifier_Enum.failed_attempts_time
            case 275 => PropertyIdentifier_Enum.last_access_event
            case 276 => PropertyIdentifier_Enum.last_access_point
            case 277 => PropertyIdentifier_Enum.last_credential_added
            case 278 => PropertyIdentifier_Enum.last_credential_added_time
            case 279 => PropertyIdentifier_Enum.last_credential_removed
            case 280 => PropertyIdentifier_Enum.last_credential_removed_time
            case 281 => PropertyIdentifier_Enum.last_use_time
            case 282 => PropertyIdentifier_Enum.lockout
            case 283 => PropertyIdentifier_Enum.lockout_relinquish_time
            case 284 => PropertyIdentifier_Enum.master_exemption
            case 285 => PropertyIdentifier_Enum.max_failed_attempts
            case 286 => PropertyIdentifier_Enum.members
            case 287 => PropertyIdentifier_Enum.muster_point
            case 288 => PropertyIdentifier_Enum.negative_access_rules
            case 289 => PropertyIdentifier_Enum.number_of_authentication_policies
            case 290 => PropertyIdentifier_Enum.occupancy_count
            case 291 => PropertyIdentifier_Enum.occupancy_count_adjust
            case 292 => PropertyIdentifier_Enum.occupancy_count_enable
            case 293 => PropertyIdentifier_Enum.occupancy_exemption
            case 294 => PropertyIdentifier_Enum.occupancy_lower_limit
            case 295 => PropertyIdentifier_Enum.occupancy_lower_limit_enforced
            case 296 => PropertyIdentifier_Enum.occupancy_state
            case 297 => PropertyIdentifier_Enum.occupancy_upper_limit
            case 298 => PropertyIdentifier_Enum.occupancy_upper_limit_enforced
            case 299 => PropertyIdentifier_Enum.passback_exemption
            case 300 => PropertyIdentifier_Enum.passback_mode
            case 301 => PropertyIdentifier_Enum.passback_timeout
            case 302 => PropertyIdentifier_Enum.positive_access_rules
            case 303 => PropertyIdentifier_Enum.reason_for_disable
            case 304 => PropertyIdentifier_Enum.supported_formats
            case 305 => PropertyIdentifier_Enum.supported_format_classes
            case 306 => PropertyIdentifier_Enum.threat_authority
            case 307 => PropertyIdentifier_Enum.threat_level
            case 308 => PropertyIdentifier_Enum.trace_flag
            case 309 => PropertyIdentifier_Enum.transaction_notification_class
            case 310 => PropertyIdentifier_Enum.user_external_identifier
            case 311 => PropertyIdentifier_Enum.user_information_reference
            case 317 => PropertyIdentifier_Enum.user_name
            case 318 => PropertyIdentifier_Enum.user_type
            case 319 => PropertyIdentifier_Enum.uses_remaining
            case 320 => PropertyIdentifier_Enum.zone_from
            case 321 => PropertyIdentifier_Enum.zone_to
            case 322 => PropertyIdentifier_Enum.access_event_tag
            case 323 => PropertyIdentifier_Enum.global_identifier
            case 326 => PropertyIdentifier_Enum.verification_time
            case 338 => PropertyIdentifier_Enum.backup_and_restore_state
            case 339 => PropertyIdentifier_Enum.backup_preparation_time
            case 340 => PropertyIdentifier_Enum.restore_completion_time
            case 341 => PropertyIdentifier_Enum.restore_preparation_time
            case 342 => PropertyIdentifier_Enum.bit_mask
            case 343 => PropertyIdentifier_Enum.bit_text
            case 344 => PropertyIdentifier_Enum.is_utc
            case 345 => PropertyIdentifier_Enum.group_members
            case 346 => PropertyIdentifier_Enum.group_member_names
            case 347 => PropertyIdentifier_Enum.member_status_flags
            case 348 => PropertyIdentifier_Enum.requested_update_interval
            case 349 => PropertyIdentifier_Enum.covu_period
            case 350 => PropertyIdentifier_Enum.covu_recipients
            case 351 => PropertyIdentifier_Enum.event_message_texts
            case 352 => PropertyIdentifier_Enum.event_message_texts_config
            case 353 => PropertyIdentifier_Enum.event_detection_enable
            case 354 => PropertyIdentifier_Enum.event_algorithm_inhibit
            case 355 => PropertyIdentifier_Enum.event_algorithm_inhibit_ref
            case 356 => PropertyIdentifier_Enum.time_delay_normal
            case 357 => PropertyIdentifier_Enum.reliability_evaluation_inhibit
            case 358 => PropertyIdentifier_Enum.fault_parameters
            case 359 => PropertyIdentifier_Enum.fault_type
            case 360 => PropertyIdentifier_Enum.local_forwarding_only
            case 361 => PropertyIdentifier_Enum.process_identifier_filter
            case 362 => PropertyIdentifier_Enum.subscribed_recipients
            case 363 => PropertyIdentifier_Enum.port_filter
            case 364 => PropertyIdentifier_Enum.authorization_exemptions
            case 365 => PropertyIdentifier_Enum.allow_group_delay_inhibit
            case 366 => PropertyIdentifier_Enum.channel_number
            case 367 => PropertyIdentifier_Enum.control_groups
            case 368 => PropertyIdentifier_Enum.execution_delay
            case 369 => PropertyIdentifier_Enum.last_priority
            case 370 => PropertyIdentifier_Enum.write_status
            case 371 => PropertyIdentifier_Enum.property_list
            case 372 => PropertyIdentifier_Enum.serial_number
            case 373 => PropertyIdentifier_Enum.blink_warn_enable
            case 374 => PropertyIdentifier_Enum.default_fade_time
            case 375 => PropertyIdentifier_Enum.default_ramp_rate
            case 376 => PropertyIdentifier_Enum.default_step_increment
            case 377 => PropertyIdentifier_Enum.egress_time
            case 378 => PropertyIdentifier_Enum.in_progress
            case 379 => PropertyIdentifier_Enum.instantaneous_power
            case 380 => PropertyIdentifier_Enum.lighting_command
            case 381 => PropertyIdentifier_Enum.lighting_command_default_priority
            case 382 => PropertyIdentifier_Enum.max_actual_value
            case 383 => PropertyIdentifier_Enum.min_actual_value
            case 384 => PropertyIdentifier_Enum.power
            case 385 => PropertyIdentifier_Enum.transition
            case 386 => PropertyIdentifier_Enum.egress_active
            case 387 => PropertyIdentifier_Enum.interface_value
            case 388 => PropertyIdentifier_Enum.fault_high_limit
            case 389 => PropertyIdentifier_Enum.fault_low_limit
            case 390 => PropertyIdentifier_Enum.low_diff_limit
            case 391 => PropertyIdentifier_Enum.strike_count
            case 392 => PropertyIdentifier_Enum.time_of_strike_count_reset
            case 393 => PropertyIdentifier_Enum.default_timeout
            case 394 => PropertyIdentifier_Enum.initial_timeout
            case 395 => PropertyIdentifier_Enum.last_state_change
            case 396 => PropertyIdentifier_Enum.state_change_values
            case 397 => PropertyIdentifier_Enum.timer_running
            case 398 => PropertyIdentifier_Enum.timer_state
            case 399 => PropertyIdentifier_Enum.apdu_length
            case 400 => PropertyIdentifier_Enum.ip_address
            case 401 => PropertyIdentifier_Enum.ip_default_gateway
            case 402 => PropertyIdentifier_Enum.ip_dhcp_enable
            case 403 => PropertyIdentifier_Enum.ip_dhcp_lease_time
            case 404 => PropertyIdentifier_Enum.ip_dhcp_lease_time_remaining
            case 405 => PropertyIdentifier_Enum.ip_dhcp_server
            case 406 => PropertyIdentifier_Enum.ip_dns_server
            case 407 => PropertyIdentifier_Enum.bacnet_ip_global_address
            case 408 => PropertyIdentifier_Enum.bacnet_ip_mode
            case 409 => PropertyIdentifier_Enum.bacnet_ip_multicast_address
            case 410 => PropertyIdentifier_Enum.bacnet_ip_nat_traversal
            case 411 => PropertyIdentifier_Enum.ip_subnet_mask
            case 412 => PropertyIdentifier_Enum.bacnet_ip_udp_port
            case 413 => PropertyIdentifier_Enum.bbmd_accept_fd_registrations
            case 414 => PropertyIdentifier_Enum.bbmd_broadcast_distribution_table
            case 415 => PropertyIdentifier_Enum.bbmd_foreign_device_table
            case 416 => PropertyIdentifier_Enum.changes_pending
            case 417 => PropertyIdentifier_Enum.command
            case 418 => PropertyIdentifier_Enum.fd_bbmd_address
            case 419 => PropertyIdentifier_Enum.fd_subscription_lifetime
            case 420 => PropertyIdentifier_Enum.link_speed
            case 421 => PropertyIdentifier_Enum.link_speeds
            case 422 => PropertyIdentifier_Enum.link_speed_autonegotiate
            case 423 => PropertyIdentifier_Enum.mac_address
            case 424 => PropertyIdentifier_Enum.network_interface_name
            case 425 => PropertyIdentifier_Enum.network_number
            case 426 => PropertyIdentifier_Enum.network_number_quality
            case 427 => PropertyIdentifier_Enum.network_type
            case 428 => PropertyIdentifier_Enum.routing_table
            case 429 => PropertyIdentifier_Enum.virtual_mac_address_table
            case 430 => PropertyIdentifier_Enum.command_time_array
            case 431 => PropertyIdentifier_Enum.current_command_priority
            case 432 => PropertyIdentifier_Enum.last_command_time
            case 433 => PropertyIdentifier_Enum.value_source
            case 434 => PropertyIdentifier_Enum.value_source_array
            case 435 => PropertyIdentifier_Enum.bacnet_ipv6_mode
            case 436 => PropertyIdentifier_Enum.ipv6_address
            case 437 => PropertyIdentifier_Enum.ipv6_prefix_length
            case 438 => PropertyIdentifier_Enum.bacnet_ipv6_udp_port
            case 439 => PropertyIdentifier_Enum.ipv6_default_gateway
            case 440 => PropertyIdentifier_Enum.bacnet_ipv6_multicast_address
            case 441 => PropertyIdentifier_Enum.ipv6_dns_server
            case 442 => PropertyIdentifier_Enum.ipv6_auto_addressing_enable
            case 443 => PropertyIdentifier_Enum.ipv6_dhcp_lease_time
            case 444 => PropertyIdentifier_Enum.ipv6_dhcp_lease_time_remaining
            case 445 => PropertyIdentifier_Enum.ipv6_dhcp_server
            case 446 => PropertyIdentifier_Enum.ipv6_zone_index
            case 447 => PropertyIdentifier_Enum.assigned_landing_calls
            case 448 => PropertyIdentifier_Enum.car_assigned_direction
            case 449 => PropertyIdentifier_Enum.car_door_command
            case 450 => PropertyIdentifier_Enum.car_door_status
            case 451 => PropertyIdentifier_Enum.car_door_text
            case 452 => PropertyIdentifier_Enum.car_door_zone
            case 453 => PropertyIdentifier_Enum.car_drive_status
            case 454 => PropertyIdentifier_Enum.car_load
            case 455 => PropertyIdentifier_Enum.car_load_units
            case 456 => PropertyIdentifier_Enum.car_mode
            case 457 => PropertyIdentifier_Enum.car_moving_direction
            case 458 => PropertyIdentifier_Enum.car_position
            case 459 => PropertyIdentifier_Enum.elevator_group
            case 460 => PropertyIdentifier_Enum.energy_meter
            case 461 => PropertyIdentifier_Enum.energy_meter_ref
            case 462 => PropertyIdentifier_Enum.escalator_mode
            case 463 => PropertyIdentifier_Enum.fault_signals
            case 464 => PropertyIdentifier_Enum.floor_text
            case 465 => PropertyIdentifier_Enum.group_id
            case 467 => PropertyIdentifier_Enum.group_mode
            case 468 => PropertyIdentifier_Enum.higher_deck
            case 469 => PropertyIdentifier_Enum.installation_id
            case 470 => PropertyIdentifier_Enum.landing_calls
            case 471 => PropertyIdentifier_Enum.landing_call_control
            case 472 => PropertyIdentifier_Enum.landing_door_status
            case 473 => PropertyIdentifier_Enum.lower_deck
            case 474 => PropertyIdentifier_Enum.machine_room_id
            case 475 => PropertyIdentifier_Enum.making_car_call
            case 476 => PropertyIdentifier_Enum.next_stopping_floor
            case 477 => PropertyIdentifier_Enum.operation_direction
            case 478 => PropertyIdentifier_Enum.passenger_alarm
            case 479 => PropertyIdentifier_Enum.power_mode
            case 480 => PropertyIdentifier_Enum.registered_car_call
            case 481 => PropertyIdentifier_Enum.active_cov_multiple_subscriptions
            case 482 => PropertyIdentifier_Enum.protocol_level
            case 483 => PropertyIdentifier_Enum.reference_port
            case 484 => PropertyIdentifier_Enum.deployed_profile_location
            case 485 => PropertyIdentifier_Enum.profile_location
            case 486 => PropertyIdentifier_Enum.tags
            case 487 => PropertyIdentifier_Enum.subordinate_node_types
            case 488 => PropertyIdentifier_Enum.subordinate_tags
            case 489 => PropertyIdentifier_Enum.subordinate_relationships
            case 490 => PropertyIdentifier_Enum.default_subordinate_relationship
            case 491 => PropertyIdentifier_Enum.represents
            case 492 => PropertyIdentifier_Enum.default_present_value
            case 493 => PropertyIdentifier_Enum.present_stage
            case 494 => PropertyIdentifier_Enum.stages
            case 495 => PropertyIdentifier_Enum.stage_names
            case 496 => PropertyIdentifier_Enum.target_references
            case 497 => PropertyIdentifier_Enum.audit_source_reporter
            case 498 => PropertyIdentifier_Enum.audit_level
            case 499 => PropertyIdentifier_Enum.audit_notification_recipient
            case 500 => PropertyIdentifier_Enum.auditable_priority_filter
            case 501 => PropertyIdentifier_Enum.auditable_operations
            case 502 => PropertyIdentifier_Enum.delete_on_forward
            case 503 => PropertyIdentifier_Enum.maximum_send_delay
            case 504 => PropertyIdentifier_Enum.monitored_objects
            case 505 => PropertyIdentifier_Enum.send_now
            case 506 => PropertyIdentifier_Enum.floor_number
            case 507 => PropertyIdentifier_Enum.device_uuid
            case x where x <= 511 => PropertyIdentifier_Enum.reserved(x)
            case y where y > 511 && y <= 4194303 => PropertyIdentifier_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case PropertyIdentifier_Enum.acked_transitions => 0
            case PropertyIdentifier_Enum.ack_required => 1
            case PropertyIdentifier_Enum.action => 2
            case PropertyIdentifier_Enum.action_text => 3
            case PropertyIdentifier_Enum.active_text => 4
            case PropertyIdentifier_Enum.active_vt_sessions => 5
            case PropertyIdentifier_Enum.alarm_value => 6
            case PropertyIdentifier_Enum.alarm_values => 7
            case PropertyIdentifier_Enum.all => 8
            case PropertyIdentifier_Enum.all_writes_successful => 9
            case PropertyIdentifier_Enum.apdu_segment_timeout => 10
            case PropertyIdentifier_Enum.apdu_timeout => 11
            case PropertyIdentifier_Enum.application_software_version => 12
            case PropertyIdentifier_Enum.archive => 13
            case PropertyIdentifier_Enum.bias => 14
            case PropertyIdentifier_Enum.change_of_state_count => 15
            case PropertyIdentifier_Enum.change_of_state_time => 16
            case PropertyIdentifier_Enum.notification_class => 17
            case PropertyIdentifier_Enum.controlled_variable_reference => 19
            case PropertyIdentifier_Enum.controlled_variable_units => 20
            case PropertyIdentifier_Enum.controlled_variable_value => 21
            case PropertyIdentifier_Enum.cov_increment => 22
            case PropertyIdentifier_Enum.date_list => 23
            case PropertyIdentifier_Enum.daylight_savings_status => 24
            case PropertyIdentifier_Enum.deadband => 25
            case PropertyIdentifier_Enum.derivative_constant => 26
            case PropertyIdentifier_Enum.derivative_constant_units => 27
            case PropertyIdentifier_Enum.description => 28
            case PropertyIdentifier_Enum.description_of_halt => 29
            case PropertyIdentifier_Enum.device_address_binding => 30
            case PropertyIdentifier_Enum.device_type => 31
            case PropertyIdentifier_Enum.effective_period => 32
            case PropertyIdentifier_Enum.elapsed_active_time => 33
            case PropertyIdentifier_Enum.error_limit => 34
            case PropertyIdentifier_Enum.event_enable => 35
            case PropertyIdentifier_Enum.event_state => 36
            case PropertyIdentifier_Enum.event_type => 37
            case PropertyIdentifier_Enum.exception_schedule => 38
            case PropertyIdentifier_Enum.fault_values => 39
            case PropertyIdentifier_Enum.feedback_value => 40
            case PropertyIdentifier_Enum.file_access_method => 41
            case PropertyIdentifier_Enum.file_size => 42
            case PropertyIdentifier_Enum.file_type => 43
            case PropertyIdentifier_Enum.firmware_revision => 44
            case PropertyIdentifier_Enum.high_limit => 45
            case PropertyIdentifier_Enum.inactive_text => 46
            case PropertyIdentifier_Enum.in_process => 47
            case PropertyIdentifier_Enum.instance_of => 48
            case PropertyIdentifier_Enum.integral_constant => 49
            case PropertyIdentifier_Enum.integral_constant_units => 50
            case PropertyIdentifier_Enum.issue_confirmed_notifications => 51
            case PropertyIdentifier_Enum.limit_enable => 52
            case PropertyIdentifier_Enum.list_of_group_members => 53
            case PropertyIdentifier_Enum.list_of_object_property_references => 54
            case PropertyIdentifier_Enum.list_of_session_keys => 55
            case PropertyIdentifier_Enum.local_date => 56
            case PropertyIdentifier_Enum.local_time => 57
            case PropertyIdentifier_Enum.location => 58
            case PropertyIdentifier_Enum.low_limit => 59
            case PropertyIdentifier_Enum.manipulated_variable_reference => 60
            case PropertyIdentifier_Enum.maximum_output => 61
            case PropertyIdentifier_Enum.max_apdu_length_accepted => 62
            case PropertyIdentifier_Enum.max_info_frames => 63
            case PropertyIdentifier_Enum.max_master => 64
            case PropertyIdentifier_Enum.max_pres_value => 65
            case PropertyIdentifier_Enum.minimum_off_time => 66
            case PropertyIdentifier_Enum.minimum_on_time => 67
            case PropertyIdentifier_Enum.minimum_output => 68
            case PropertyIdentifier_Enum.min_pres_value => 69
            case PropertyIdentifier_Enum.model_name => 70
            case PropertyIdentifier_Enum.modification_date => 71
            case PropertyIdentifier_Enum.notify_type => 72
            case PropertyIdentifier_Enum.number_of_apdu_retries => 73
            case PropertyIdentifier_Enum.number_of_states => 74
            case PropertyIdentifier_Enum.object_identifier => 75
            case PropertyIdentifier_Enum.object_list => 76
            case PropertyIdentifier_Enum.object_name => 77
            case PropertyIdentifier_Enum.object_property_reference => 78
            case PropertyIdentifier_Enum.object_type => 79
            case PropertyIdentifier_Enum.optional => 80
            case PropertyIdentifier_Enum.out_of_service => 81
            case PropertyIdentifier_Enum.output_units => 82
            case PropertyIdentifier_Enum.event_parameters => 83
            case PropertyIdentifier_Enum.polarity => 84
            case PropertyIdentifier_Enum.present_value => 85
            case PropertyIdentifier_Enum.priority => 86
            case PropertyIdentifier_Enum.priority_array => 87
            case PropertyIdentifier_Enum.priority_for_writing => 88
            case PropertyIdentifier_Enum.process_identifier => 89
            case PropertyIdentifier_Enum.program_change => 90
            case PropertyIdentifier_Enum.program_location => 91
            case PropertyIdentifier_Enum.program_state => 92
            case PropertyIdentifier_Enum.proportional_constant => 93
            case PropertyIdentifier_Enum.proportional_constant_units => 94
            case PropertyIdentifier_Enum.protocol_conformance_class => 95
            case PropertyIdentifier_Enum.protocol_object_types_supported => 96
            case PropertyIdentifier_Enum.protocol_services_supported => 97
            case PropertyIdentifier_Enum.protocol_version => 98
            case PropertyIdentifier_Enum.read_only => 99
            case PropertyIdentifier_Enum.reason_for_halt => 100
            case PropertyIdentifier_Enum.recipient => 101
            case PropertyIdentifier_Enum.recipient_list => 102
            case PropertyIdentifier_Enum.reliability => 103
            case PropertyIdentifier_Enum.relinquish_default => 104
            case PropertyIdentifier_Enum.required => 105
            case PropertyIdentifier_Enum.resolution => 106
            case PropertyIdentifier_Enum.segmentation_supported => 107
            case PropertyIdentifier_Enum.setpoint => 108
            case PropertyIdentifier_Enum.setpoint_reference => 109
            case PropertyIdentifier_Enum.state_text => 110
            case PropertyIdentifier_Enum.status_flags => 111
            case PropertyIdentifier_Enum.system_status => 112
            case PropertyIdentifier_Enum.time_delay => 113
            case PropertyIdentifier_Enum.time_of_active_time_reset => 114
            case PropertyIdentifier_Enum.time_of_state_count_reset => 115
            case PropertyIdentifier_Enum.time_synchronization_recipients => 116
            case PropertyIdentifier_Enum.units => 117
            case PropertyIdentifier_Enum.update_interval => 118
            case PropertyIdentifier_Enum.utc_offset => 119
            case PropertyIdentifier_Enum.vendor_identifier => 120
            case PropertyIdentifier_Enum.vendor_name => 121
            case PropertyIdentifier_Enum.vt_classes_supported => 122
            case PropertyIdentifier_Enum.weekly_schedule => 123
            case PropertyIdentifier_Enum.attempted_samples => 124
            case PropertyIdentifier_Enum.average_value => 125
            case PropertyIdentifier_Enum.buffer_size => 126
            case PropertyIdentifier_Enum.client_cov_increment => 127
            case PropertyIdentifier_Enum.cov_resubscription_interval => 128
            case PropertyIdentifier_Enum.current_notify_time => 129
            case PropertyIdentifier_Enum.event_time_stamps => 130
            case PropertyIdentifier_Enum.log_buffer => 131
            case PropertyIdentifier_Enum.log_device_object_property => 132
            case PropertyIdentifier_Enum.enable => 133
            case PropertyIdentifier_Enum.log_interval => 134
            case PropertyIdentifier_Enum.maximum_value => 135
            case PropertyIdentifier_Enum.minimum_value => 136
            case PropertyIdentifier_Enum.notification_threshold => 137
            case PropertyIdentifier_Enum.previous_notify_time => 138
            case PropertyIdentifier_Enum.protocol_revision => 139
            case PropertyIdentifier_Enum.records_since_notification => 140
            case PropertyIdentifier_Enum.record_count => 141
            case PropertyIdentifier_Enum.start_time => 142
            case PropertyIdentifier_Enum.stop_time => 143
            case PropertyIdentifier_Enum.stop_when_full => 144
            case PropertyIdentifier_Enum.total_record_count => 145
            case PropertyIdentifier_Enum.valid_samples => 146
            case PropertyIdentifier_Enum.window_interval => 147
            case PropertyIdentifier_Enum.window_samples => 148
            case PropertyIdentifier_Enum.maximum_value_timestamp => 149
            case PropertyIdentifier_Enum.minimum_value_timestamp => 150
            case PropertyIdentifier_Enum.variance_value => 151
            case PropertyIdentifier_Enum.active_cov_subscriptions => 152
            case PropertyIdentifier_Enum.backup_failure_timeout => 153
            case PropertyIdentifier_Enum.configuration_files => 154
            case PropertyIdentifier_Enum.database_revision => 155
            case PropertyIdentifier_Enum.direct_reading => 156
            case PropertyIdentifier_Enum.last_restore_time => 157
            case PropertyIdentifier_Enum.maintenance_required => 158
            case PropertyIdentifier_Enum.member_of => 159
            case PropertyIdentifier_Enum.mode => 160
            case PropertyIdentifier_Enum.operation_expected => 161
            case PropertyIdentifier_Enum.setting => 162
            case PropertyIdentifier_Enum.silenced => 163
            case PropertyIdentifier_Enum.tracking_value => 164
            case PropertyIdentifier_Enum.zone_members => 165
            case PropertyIdentifier_Enum.life_safety_alarm_values => 166
            case PropertyIdentifier_Enum.max_segments_accepted => 167
            case PropertyIdentifier_Enum.profile_name => 168
            case PropertyIdentifier_Enum.auto_slave_discovery => 169
            case PropertyIdentifier_Enum.manual_slave_address_binding => 170
            case PropertyIdentifier_Enum.slave_address_binding => 171
            case PropertyIdentifier_Enum.slave_proxy_enable => 172
            case PropertyIdentifier_Enum.last_notify_record => 173
            case PropertyIdentifier_Enum.schedule_default => 174
            case PropertyIdentifier_Enum.accepted_modes => 175
            case PropertyIdentifier_Enum.adjust_value => 176
            case PropertyIdentifier_Enum.count => 177
            case PropertyIdentifier_Enum.count_before_change => 178
            case PropertyIdentifier_Enum.count_change_time => 179
            case PropertyIdentifier_Enum.cov_period => 180
            case PropertyIdentifier_Enum.input_reference => 181
            case PropertyIdentifier_Enum.limit_monitoring_interval => 182
            case PropertyIdentifier_Enum.logging_object => 183
            case PropertyIdentifier_Enum.logging_record => 184
            case PropertyIdentifier_Enum.prescale => 185
            case PropertyIdentifier_Enum.pulse_rate => 186
            case PropertyIdentifier_Enum.scale => 187
            case PropertyIdentifier_Enum.scale_factor => 188
            case PropertyIdentifier_Enum.update_time => 189
            case PropertyIdentifier_Enum.value_before_change => 190
            case PropertyIdentifier_Enum.value_set => 191
            case PropertyIdentifier_Enum.value_change_time => 192
            case PropertyIdentifier_Enum.align_intervals => 193
            case PropertyIdentifier_Enum.interval_offset => 195
            case PropertyIdentifier_Enum.last_restart_reason => 196
            case PropertyIdentifier_Enum.logging_type => 197
            case PropertyIdentifier_Enum.restart_notification_recipients => 202
            case PropertyIdentifier_Enum.time_of_device_restart => 203
            case PropertyIdentifier_Enum.time_synchronization_interval => 204
            case PropertyIdentifier_Enum.trigger => 205
            case PropertyIdentifier_Enum.utc_time_synchronization_recipients => 206
            case PropertyIdentifier_Enum.node_subtype => 207
            case PropertyIdentifier_Enum.node_type => 208
            case PropertyIdentifier_Enum.structured_object_list => 209
            case PropertyIdentifier_Enum.subordinate_annotations => 210
            case PropertyIdentifier_Enum.subordinate_list => 211
            case PropertyIdentifier_Enum.actual_shed_level => 212
            case PropertyIdentifier_Enum.duty_window => 213
            case PropertyIdentifier_Enum.expected_shed_level => 214
            case PropertyIdentifier_Enum.full_duty_baseline => 215
            case PropertyIdentifier_Enum.requested_shed_level => 218
            case PropertyIdentifier_Enum.shed_duration => 219
            case PropertyIdentifier_Enum.shed_level_descriptions => 220
            case PropertyIdentifier_Enum.shed_levels => 221
            case PropertyIdentifier_Enum.state_description => 222
            case PropertyIdentifier_Enum.door_alarm_state => 226
            case PropertyIdentifier_Enum.door_extended_pulse_time => 227
            case PropertyIdentifier_Enum.door_members => 228
            case PropertyIdentifier_Enum.door_open_too_long_time => 229
            case PropertyIdentifier_Enum.door_pulse_time => 230
            case PropertyIdentifier_Enum.door_status => 231
            case PropertyIdentifier_Enum.door_unlock_delay_time => 232
            case PropertyIdentifier_Enum.lock_status => 233
            case PropertyIdentifier_Enum.masked_alarm_values => 234
            case PropertyIdentifier_Enum.secured_status => 235
            case PropertyIdentifier_Enum.absentee_limit => 244
            case PropertyIdentifier_Enum.access_alarm_events => 245
            case PropertyIdentifier_Enum.access_doors => 246
            case PropertyIdentifier_Enum.access_event => 247
            case PropertyIdentifier_Enum.access_event_authentication_factor => 248
            case PropertyIdentifier_Enum.access_event_credential => 249
            case PropertyIdentifier_Enum.access_event_time => 250
            case PropertyIdentifier_Enum.access_transaction_events => 251
            case PropertyIdentifier_Enum.accompaniment => 252
            case PropertyIdentifier_Enum.accompaniment_time => 253
            case PropertyIdentifier_Enum.activation_time => 254
            case PropertyIdentifier_Enum.active_authentication_policy => 255
            case PropertyIdentifier_Enum.assigned_access_rights => 256
            case PropertyIdentifier_Enum.authentication_factors => 257
            case PropertyIdentifier_Enum.authentication_policy_list => 258
            case PropertyIdentifier_Enum.authentication_policy_names => 259
            case PropertyIdentifier_Enum.authentication_status => 260
            case PropertyIdentifier_Enum.authorization_mode => 261
            case PropertyIdentifier_Enum.belongs_to => 262
            case PropertyIdentifier_Enum.credential_disable => 263
            case PropertyIdentifier_Enum.credential_status => 264
            case PropertyIdentifier_Enum.credentials => 265
            case PropertyIdentifier_Enum.credentials_in_zone => 266
            case PropertyIdentifier_Enum.days_remaining => 267
            case PropertyIdentifier_Enum.entry_points => 268
            case PropertyIdentifier_Enum.exit_points => 269
            case PropertyIdentifier_Enum.expiration_time => 270
            case PropertyIdentifier_Enum.extended_time_enable => 271
            case PropertyIdentifier_Enum.failed_attempt_events => 272
            case PropertyIdentifier_Enum.failed_attempts => 273
            case PropertyIdentifier_Enum.failed_attempts_time => 274
            case PropertyIdentifier_Enum.last_access_event => 275
            case PropertyIdentifier_Enum.last_access_point => 276
            case PropertyIdentifier_Enum.last_credential_added => 277
            case PropertyIdentifier_Enum.last_credential_added_time => 278
            case PropertyIdentifier_Enum.last_credential_removed => 279
            case PropertyIdentifier_Enum.last_credential_removed_time => 280
            case PropertyIdentifier_Enum.last_use_time => 281
            case PropertyIdentifier_Enum.lockout => 282
            case PropertyIdentifier_Enum.lockout_relinquish_time => 283
            case PropertyIdentifier_Enum.master_exemption => 284
            case PropertyIdentifier_Enum.max_failed_attempts => 285
            case PropertyIdentifier_Enum.members => 286
            case PropertyIdentifier_Enum.muster_point => 287
            case PropertyIdentifier_Enum.negative_access_rules => 288
            case PropertyIdentifier_Enum.number_of_authentication_policies => 289
            case PropertyIdentifier_Enum.occupancy_count => 290
            case PropertyIdentifier_Enum.occupancy_count_adjust => 291
            case PropertyIdentifier_Enum.occupancy_count_enable => 292
            case PropertyIdentifier_Enum.occupancy_exemption => 293
            case PropertyIdentifier_Enum.occupancy_lower_limit => 294
            case PropertyIdentifier_Enum.occupancy_lower_limit_enforced => 295
            case PropertyIdentifier_Enum.occupancy_state => 296
            case PropertyIdentifier_Enum.occupancy_upper_limit => 297
            case PropertyIdentifier_Enum.occupancy_upper_limit_enforced => 298
            case PropertyIdentifier_Enum.passback_exemption => 299
            case PropertyIdentifier_Enum.passback_mode => 300
            case PropertyIdentifier_Enum.passback_timeout => 301
            case PropertyIdentifier_Enum.positive_access_rules => 302
            case PropertyIdentifier_Enum.reason_for_disable => 303
            case PropertyIdentifier_Enum.supported_formats => 304
            case PropertyIdentifier_Enum.supported_format_classes => 305
            case PropertyIdentifier_Enum.threat_authority => 306
            case PropertyIdentifier_Enum.threat_level => 307
            case PropertyIdentifier_Enum.trace_flag => 308
            case PropertyIdentifier_Enum.transaction_notification_class => 309
            case PropertyIdentifier_Enum.user_external_identifier => 310
            case PropertyIdentifier_Enum.user_information_reference => 311
            case PropertyIdentifier_Enum.user_name => 317
            case PropertyIdentifier_Enum.user_type => 318
            case PropertyIdentifier_Enum.uses_remaining => 319
            case PropertyIdentifier_Enum.zone_from => 320
            case PropertyIdentifier_Enum.zone_to => 321
            case PropertyIdentifier_Enum.access_event_tag => 322
            case PropertyIdentifier_Enum.global_identifier => 323
            case PropertyIdentifier_Enum.verification_time => 326
            case PropertyIdentifier_Enum.backup_and_restore_state => 338
            case PropertyIdentifier_Enum.backup_preparation_time => 339
            case PropertyIdentifier_Enum.restore_completion_time => 340
            case PropertyIdentifier_Enum.restore_preparation_time => 341
            case PropertyIdentifier_Enum.bit_mask => 342
            case PropertyIdentifier_Enum.bit_text => 343
            case PropertyIdentifier_Enum.is_utc => 344
            case PropertyIdentifier_Enum.group_members => 345
            case PropertyIdentifier_Enum.group_member_names => 346
            case PropertyIdentifier_Enum.member_status_flags => 347
            case PropertyIdentifier_Enum.requested_update_interval => 348
            case PropertyIdentifier_Enum.covu_period => 349
            case PropertyIdentifier_Enum.covu_recipients => 350
            case PropertyIdentifier_Enum.event_message_texts => 351
            case PropertyIdentifier_Enum.event_message_texts_config => 352
            case PropertyIdentifier_Enum.event_detection_enable => 353
            case PropertyIdentifier_Enum.event_algorithm_inhibit => 354
            case PropertyIdentifier_Enum.event_algorithm_inhibit_ref => 355
            case PropertyIdentifier_Enum.time_delay_normal => 356
            case PropertyIdentifier_Enum.reliability_evaluation_inhibit => 357
            case PropertyIdentifier_Enum.fault_parameters => 358
            case PropertyIdentifier_Enum.fault_type => 359
            case PropertyIdentifier_Enum.local_forwarding_only => 360
            case PropertyIdentifier_Enum.process_identifier_filter => 361
            case PropertyIdentifier_Enum.subscribed_recipients => 362
            case PropertyIdentifier_Enum.port_filter => 363
            case PropertyIdentifier_Enum.authorization_exemptions => 364
            case PropertyIdentifier_Enum.allow_group_delay_inhibit => 365
            case PropertyIdentifier_Enum.channel_number => 366
            case PropertyIdentifier_Enum.control_groups => 367
            case PropertyIdentifier_Enum.execution_delay => 368
            case PropertyIdentifier_Enum.last_priority => 369
            case PropertyIdentifier_Enum.write_status => 370
            case PropertyIdentifier_Enum.property_list => 371
            case PropertyIdentifier_Enum.serial_number => 372
            case PropertyIdentifier_Enum.blink_warn_enable => 373
            case PropertyIdentifier_Enum.default_fade_time => 374
            case PropertyIdentifier_Enum.default_ramp_rate => 375
            case PropertyIdentifier_Enum.default_step_increment => 376
            case PropertyIdentifier_Enum.egress_time => 377
            case PropertyIdentifier_Enum.in_progress => 378
            case PropertyIdentifier_Enum.instantaneous_power => 379
            case PropertyIdentifier_Enum.lighting_command => 380
            case PropertyIdentifier_Enum.lighting_command_default_priority => 381
            case PropertyIdentifier_Enum.max_actual_value => 382
            case PropertyIdentifier_Enum.min_actual_value => 383
            case PropertyIdentifier_Enum.power => 384
            case PropertyIdentifier_Enum.transition => 385
            case PropertyIdentifier_Enum.egress_active => 386
            case PropertyIdentifier_Enum.interface_value => 387
            case PropertyIdentifier_Enum.fault_high_limit => 388
            case PropertyIdentifier_Enum.fault_low_limit => 389
            case PropertyIdentifier_Enum.low_diff_limit => 390
            case PropertyIdentifier_Enum.strike_count => 391
            case PropertyIdentifier_Enum.time_of_strike_count_reset => 392
            case PropertyIdentifier_Enum.default_timeout => 393
            case PropertyIdentifier_Enum.initial_timeout => 394
            case PropertyIdentifier_Enum.last_state_change => 395
            case PropertyIdentifier_Enum.state_change_values => 396
            case PropertyIdentifier_Enum.timer_running => 397
            case PropertyIdentifier_Enum.timer_state => 398
            case PropertyIdentifier_Enum.apdu_length => 399
            case PropertyIdentifier_Enum.ip_address => 400
            case PropertyIdentifier_Enum.ip_default_gateway => 401
            case PropertyIdentifier_Enum.ip_dhcp_enable => 402
            case PropertyIdentifier_Enum.ip_dhcp_lease_time => 403
            case PropertyIdentifier_Enum.ip_dhcp_lease_time_remaining => 404
            case PropertyIdentifier_Enum.ip_dhcp_server => 405
            case PropertyIdentifier_Enum.ip_dns_server => 406
            case PropertyIdentifier_Enum.bacnet_ip_global_address => 407
            case PropertyIdentifier_Enum.bacnet_ip_mode => 408
            case PropertyIdentifier_Enum.bacnet_ip_multicast_address => 409
            case PropertyIdentifier_Enum.bacnet_ip_nat_traversal => 410
            case PropertyIdentifier_Enum.ip_subnet_mask => 411
            case PropertyIdentifier_Enum.bacnet_ip_udp_port => 412
            case PropertyIdentifier_Enum.bbmd_accept_fd_registrations => 413
            case PropertyIdentifier_Enum.bbmd_broadcast_distribution_table => 414
            case PropertyIdentifier_Enum.bbmd_foreign_device_table => 415
            case PropertyIdentifier_Enum.changes_pending => 416
            case PropertyIdentifier_Enum.command => 417
            case PropertyIdentifier_Enum.fd_bbmd_address => 418
            case PropertyIdentifier_Enum.fd_subscription_lifetime => 419
            case PropertyIdentifier_Enum.link_speed => 420
            case PropertyIdentifier_Enum.link_speeds => 421
            case PropertyIdentifier_Enum.link_speed_autonegotiate => 422
            case PropertyIdentifier_Enum.mac_address => 423
            case PropertyIdentifier_Enum.network_interface_name => 424
            case PropertyIdentifier_Enum.network_number => 425
            case PropertyIdentifier_Enum.network_number_quality => 426
            case PropertyIdentifier_Enum.network_type => 427
            case PropertyIdentifier_Enum.routing_table => 428
            case PropertyIdentifier_Enum.virtual_mac_address_table => 429
            case PropertyIdentifier_Enum.command_time_array => 430
            case PropertyIdentifier_Enum.current_command_priority => 431
            case PropertyIdentifier_Enum.last_command_time => 432
            case PropertyIdentifier_Enum.value_source => 433
            case PropertyIdentifier_Enum.value_source_array => 434
            case PropertyIdentifier_Enum.bacnet_ipv6_mode => 435
            case PropertyIdentifier_Enum.ipv6_address => 436
            case PropertyIdentifier_Enum.ipv6_prefix_length => 437
            case PropertyIdentifier_Enum.bacnet_ipv6_udp_port => 438
            case PropertyIdentifier_Enum.ipv6_default_gateway => 439
            case PropertyIdentifier_Enum.bacnet_ipv6_multicast_address => 440
            case PropertyIdentifier_Enum.ipv6_dns_server => 441
            case PropertyIdentifier_Enum.ipv6_auto_addressing_enable => 442
            case PropertyIdentifier_Enum.ipv6_dhcp_lease_time => 443
            case PropertyIdentifier_Enum.ipv6_dhcp_lease_time_remaining => 444
            case PropertyIdentifier_Enum.ipv6_dhcp_server => 445
            case PropertyIdentifier_Enum.ipv6_zone_index => 446
            case PropertyIdentifier_Enum.assigned_landing_calls => 447
            case PropertyIdentifier_Enum.car_assigned_direction => 448
            case PropertyIdentifier_Enum.car_door_command => 449
            case PropertyIdentifier_Enum.car_door_status => 450
            case PropertyIdentifier_Enum.car_door_text => 451
            case PropertyIdentifier_Enum.car_door_zone => 452
            case PropertyIdentifier_Enum.car_drive_status => 453
            case PropertyIdentifier_Enum.car_load => 454
            case PropertyIdentifier_Enum.car_load_units => 455
            case PropertyIdentifier_Enum.car_mode => 456
            case PropertyIdentifier_Enum.car_moving_direction => 457
            case PropertyIdentifier_Enum.car_position => 458
            case PropertyIdentifier_Enum.elevator_group => 459
            case PropertyIdentifier_Enum.energy_meter => 460
            case PropertyIdentifier_Enum.energy_meter_ref => 461
            case PropertyIdentifier_Enum.escalator_mode => 462
            case PropertyIdentifier_Enum.fault_signals => 463
            case PropertyIdentifier_Enum.floor_text => 464
            case PropertyIdentifier_Enum.group_id => 465
            case PropertyIdentifier_Enum.group_mode => 467
            case PropertyIdentifier_Enum.higher_deck => 468
            case PropertyIdentifier_Enum.installation_id => 469
            case PropertyIdentifier_Enum.landing_calls => 470
            case PropertyIdentifier_Enum.landing_call_control => 471
            case PropertyIdentifier_Enum.landing_door_status => 472
            case PropertyIdentifier_Enum.lower_deck => 473
            case PropertyIdentifier_Enum.machine_room_id => 474
            case PropertyIdentifier_Enum.making_car_call => 475
            case PropertyIdentifier_Enum.next_stopping_floor => 476
            case PropertyIdentifier_Enum.operation_direction => 477
            case PropertyIdentifier_Enum.passenger_alarm => 478
            case PropertyIdentifier_Enum.power_mode => 479
            case PropertyIdentifier_Enum.registered_car_call => 480
            case PropertyIdentifier_Enum.active_cov_multiple_subscriptions => 481
            case PropertyIdentifier_Enum.protocol_level => 482
            case PropertyIdentifier_Enum.reference_port => 483
            case PropertyIdentifier_Enum.deployed_profile_location => 484
            case PropertyIdentifier_Enum.profile_location => 485
            case PropertyIdentifier_Enum.tags => 486
            case PropertyIdentifier_Enum.subordinate_node_types => 487
            case PropertyIdentifier_Enum.subordinate_tags => 488
            case PropertyIdentifier_Enum.subordinate_relationships => 489
            case PropertyIdentifier_Enum.default_subordinate_relationship => 490
            case PropertyIdentifier_Enum.represents => 491
            case PropertyIdentifier_Enum.default_present_value => 492
            case PropertyIdentifier_Enum.present_stage => 493
            case PropertyIdentifier_Enum.stages => 494
            case PropertyIdentifier_Enum.stage_names => 495
            case PropertyIdentifier_Enum.target_references => 496
            case PropertyIdentifier_Enum.audit_source_reporter => 497
            case PropertyIdentifier_Enum.audit_level => 498
            case PropertyIdentifier_Enum.audit_notification_recipient => 499
            case PropertyIdentifier_Enum.auditable_priority_filter => 500
            case PropertyIdentifier_Enum.auditable_operations => 501
            case PropertyIdentifier_Enum.delete_on_forward => 502
            case PropertyIdentifier_Enum.maximum_send_delay => 503
            case PropertyIdentifier_Enum.monitored_objects => 504
            case PropertyIdentifier_Enum.send_now => 505
            case PropertyIdentifier_Enum.floor_number => 506
            case PropertyIdentifier_Enum.device_uuid => 507
            case PropertyIdentifier_Enum.reserved(x) => x
            case PropertyIdentifier_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case PropertyIdentifier_Enum.acked_transitions => "acked_transitions"
            case PropertyIdentifier_Enum.ack_required => "ack_required"
            case PropertyIdentifier_Enum.action => "action"
            case PropertyIdentifier_Enum.action_text => "action_text"
            case PropertyIdentifier_Enum.active_text => "active_text"
            case PropertyIdentifier_Enum.active_vt_sessions => "active_vt_sessions"
            case PropertyIdentifier_Enum.alarm_value => "alarm_value"
            case PropertyIdentifier_Enum.alarm_values => "alarm_values"
            case PropertyIdentifier_Enum.all => "all"
            case PropertyIdentifier_Enum.all_writes_successful => "all_writes_successful"
            case PropertyIdentifier_Enum.apdu_segment_timeout => "apdu_segment_timeout"
            case PropertyIdentifier_Enum.apdu_timeout => "apdu_timeout"
            case PropertyIdentifier_Enum.application_software_version => "application_software_version"
            case PropertyIdentifier_Enum.archive => "archive"
            case PropertyIdentifier_Enum.bias => "bias"
            case PropertyIdentifier_Enum.change_of_state_count => "change_of_state_count"
            case PropertyIdentifier_Enum.change_of_state_time => "change_of_state_time"
            case PropertyIdentifier_Enum.notification_class => "notification_class"
            case PropertyIdentifier_Enum.controlled_variable_reference => "controlled_variable_reference"
            case PropertyIdentifier_Enum.controlled_variable_units => "controlled_variable_units"
            case PropertyIdentifier_Enum.controlled_variable_value => "controlled_variable_value"
            case PropertyIdentifier_Enum.cov_increment => "cov_increment"
            case PropertyIdentifier_Enum.date_list => "date_list"
            case PropertyIdentifier_Enum.daylight_savings_status => "daylight_savings_status"
            case PropertyIdentifier_Enum.deadband => "deadband"
            case PropertyIdentifier_Enum.derivative_constant => "derivative_constant"
            case PropertyIdentifier_Enum.derivative_constant_units => "derivative_constant_units"
            case PropertyIdentifier_Enum.description => "description"
            case PropertyIdentifier_Enum.description_of_halt => "description_of_halt"
            case PropertyIdentifier_Enum.device_address_binding => "device_address_binding"
            case PropertyIdentifier_Enum.device_type => "device_type"
            case PropertyIdentifier_Enum.effective_period => "effective_period"
            case PropertyIdentifier_Enum.elapsed_active_time => "elapsed_active_time"
            case PropertyIdentifier_Enum.error_limit => "error_limit"
            case PropertyIdentifier_Enum.event_enable => "event_enable"
            case PropertyIdentifier_Enum.event_state => "event_state"
            case PropertyIdentifier_Enum.event_type => "event_type"
            case PropertyIdentifier_Enum.exception_schedule => "exception_schedule"
            case PropertyIdentifier_Enum.fault_values => "fault_values"
            case PropertyIdentifier_Enum.feedback_value => "feedback_value"
            case PropertyIdentifier_Enum.file_access_method => "file_access_method"
            case PropertyIdentifier_Enum.file_size => "file_size"
            case PropertyIdentifier_Enum.file_type => "file_type"
            case PropertyIdentifier_Enum.firmware_revision => "firmware_revision"
            case PropertyIdentifier_Enum.high_limit => "high_limit"
            case PropertyIdentifier_Enum.inactive_text => "inactive_text"
            case PropertyIdentifier_Enum.in_process => "in_process"
            case PropertyIdentifier_Enum.instance_of => "instance_of"
            case PropertyIdentifier_Enum.integral_constant => "integral_constant"
            case PropertyIdentifier_Enum.integral_constant_units => "integral_constant_units"
            case PropertyIdentifier_Enum.issue_confirmed_notifications => "issue_confirmed_notifications"
            case PropertyIdentifier_Enum.limit_enable => "limit_enable"
            case PropertyIdentifier_Enum.list_of_group_members => "list_of_group_members"
            case PropertyIdentifier_Enum.list_of_object_property_references => "list_of_object_property_references"
            case PropertyIdentifier_Enum.list_of_session_keys => "list_of_session_keys"
            case PropertyIdentifier_Enum.local_date => "local_date"
            case PropertyIdentifier_Enum.local_time => "local_time"
            case PropertyIdentifier_Enum.location => "location"
            case PropertyIdentifier_Enum.low_limit => "low_limit"
            case PropertyIdentifier_Enum.manipulated_variable_reference => "manipulated_variable_reference"
            case PropertyIdentifier_Enum.maximum_output => "maximum_output"
            case PropertyIdentifier_Enum.max_apdu_length_accepted => "max_apdu_length_accepted"
            case PropertyIdentifier_Enum.max_info_frames => "max_info_frames"
            case PropertyIdentifier_Enum.max_master => "max_master"
            case PropertyIdentifier_Enum.max_pres_value => "max_pres_value"
            case PropertyIdentifier_Enum.minimum_off_time => "minimum_off_time"
            case PropertyIdentifier_Enum.minimum_on_time => "minimum_on_time"
            case PropertyIdentifier_Enum.minimum_output => "minimum_output"
            case PropertyIdentifier_Enum.min_pres_value => "min_pres_value"
            case PropertyIdentifier_Enum.model_name => "model_name"
            case PropertyIdentifier_Enum.modification_date => "modification_date"
            case PropertyIdentifier_Enum.notify_type => "notify_type"
            case PropertyIdentifier_Enum.number_of_apdu_retries => "number_of_apdu_retries"
            case PropertyIdentifier_Enum.number_of_states => "number_of_states"
            case PropertyIdentifier_Enum.object_identifier => "object_identifier"
            case PropertyIdentifier_Enum.object_list => "object_list"
            case PropertyIdentifier_Enum.object_name => "object_name"
            case PropertyIdentifier_Enum.object_property_reference => "object_property_reference"
            case PropertyIdentifier_Enum.object_type => "object_type"
            case PropertyIdentifier_Enum.optional => "optional"
            case PropertyIdentifier_Enum.out_of_service => "out_of_service"
            case PropertyIdentifier_Enum.output_units => "output_units"
            case PropertyIdentifier_Enum.event_parameters => "event_parameters"
            case PropertyIdentifier_Enum.polarity => "polarity"
            case PropertyIdentifier_Enum.present_value => "present_value"
            case PropertyIdentifier_Enum.priority => "priority"
            case PropertyIdentifier_Enum.priority_array => "priority_array"
            case PropertyIdentifier_Enum.priority_for_writing => "priority_for_writing"
            case PropertyIdentifier_Enum.process_identifier => "process_identifier"
            case PropertyIdentifier_Enum.program_change => "program_change"
            case PropertyIdentifier_Enum.program_location => "program_location"
            case PropertyIdentifier_Enum.program_state => "program_state"
            case PropertyIdentifier_Enum.proportional_constant => "proportional_constant"
            case PropertyIdentifier_Enum.proportional_constant_units => "proportional_constant_units"
            case PropertyIdentifier_Enum.protocol_conformance_class => "protocol_conformance_class"
            case PropertyIdentifier_Enum.protocol_object_types_supported => "protocol_object_types_supported"
            case PropertyIdentifier_Enum.protocol_services_supported => "protocol_services_supported"
            case PropertyIdentifier_Enum.protocol_version => "protocol_version"
            case PropertyIdentifier_Enum.read_only => "read_only"
            case PropertyIdentifier_Enum.reason_for_halt => "reason_for_halt"
            case PropertyIdentifier_Enum.recipient => "recipient"
            case PropertyIdentifier_Enum.recipient_list => "recipient_list"
            case PropertyIdentifier_Enum.reliability => "reliability"
            case PropertyIdentifier_Enum.relinquish_default => "relinquish_default"
            case PropertyIdentifier_Enum.required => "required"
            case PropertyIdentifier_Enum.resolution => "resolution"
            case PropertyIdentifier_Enum.segmentation_supported => "segmentation_supported"
            case PropertyIdentifier_Enum.setpoint => "setpoint"
            case PropertyIdentifier_Enum.setpoint_reference => "setpoint_reference"
            case PropertyIdentifier_Enum.state_text => "state_text"
            case PropertyIdentifier_Enum.status_flags => "status_flags"
            case PropertyIdentifier_Enum.system_status => "system_status"
            case PropertyIdentifier_Enum.time_delay => "time_delay"
            case PropertyIdentifier_Enum.time_of_active_time_reset => "time_of_active_time_reset"
            case PropertyIdentifier_Enum.time_of_state_count_reset => "time_of_state_count_reset"
            case PropertyIdentifier_Enum.time_synchronization_recipients => "time_synchronization_recipients"
            case PropertyIdentifier_Enum.units => "units"
            case PropertyIdentifier_Enum.update_interval => "update_interval"
            case PropertyIdentifier_Enum.utc_offset => "utc_offset"
            case PropertyIdentifier_Enum.vendor_identifier => "vendor_identifier"
            case PropertyIdentifier_Enum.vendor_name => "vendor_name"
            case PropertyIdentifier_Enum.vt_classes_supported => "vt_classes_supported"
            case PropertyIdentifier_Enum.weekly_schedule => "weekly_schedule"
            case PropertyIdentifier_Enum.attempted_samples => "attempted_samples"
            case PropertyIdentifier_Enum.average_value => "average_value"
            case PropertyIdentifier_Enum.buffer_size => "buffer_size"
            case PropertyIdentifier_Enum.client_cov_increment => "client_cov_increment"
            case PropertyIdentifier_Enum.cov_resubscription_interval => "cov_resubscription_interval"
            case PropertyIdentifier_Enum.current_notify_time => "current_notify_time"
            case PropertyIdentifier_Enum.event_time_stamps => "event_time_stamps"
            case PropertyIdentifier_Enum.log_buffer => "log_buffer"
            case PropertyIdentifier_Enum.log_device_object_property => "log_device_object_property"
            case PropertyIdentifier_Enum.enable => "enable"
            case PropertyIdentifier_Enum.log_interval => "log_interval"
            case PropertyIdentifier_Enum.maximum_value => "maximum_value"
            case PropertyIdentifier_Enum.minimum_value => "minimum_value"
            case PropertyIdentifier_Enum.notification_threshold => "notification_threshold"
            case PropertyIdentifier_Enum.previous_notify_time => "previous_notify_time"
            case PropertyIdentifier_Enum.protocol_revision => "protocol_revision"
            case PropertyIdentifier_Enum.records_since_notification => "records_since_notification"
            case PropertyIdentifier_Enum.record_count => "record_count"
            case PropertyIdentifier_Enum.start_time => "start_time"
            case PropertyIdentifier_Enum.stop_time => "stop_time"
            case PropertyIdentifier_Enum.stop_when_full => "stop_when_full"
            case PropertyIdentifier_Enum.total_record_count => "total_record_count"
            case PropertyIdentifier_Enum.valid_samples => "valid_samples"
            case PropertyIdentifier_Enum.window_interval => "window_interval"
            case PropertyIdentifier_Enum.window_samples => "window_samples"
            case PropertyIdentifier_Enum.maximum_value_timestamp => "maximum_value_timestamp"
            case PropertyIdentifier_Enum.minimum_value_timestamp => "minimum_value_timestamp"
            case PropertyIdentifier_Enum.variance_value => "variance_value"
            case PropertyIdentifier_Enum.active_cov_subscriptions => "active_cov_subscriptions"
            case PropertyIdentifier_Enum.backup_failure_timeout => "backup_failure_timeout"
            case PropertyIdentifier_Enum.configuration_files => "configuration_files"
            case PropertyIdentifier_Enum.database_revision => "database_revision"
            case PropertyIdentifier_Enum.direct_reading => "direct_reading"
            case PropertyIdentifier_Enum.last_restore_time => "last_restore_time"
            case PropertyIdentifier_Enum.maintenance_required => "maintenance_required"
            case PropertyIdentifier_Enum.member_of => "member_of"
            case PropertyIdentifier_Enum.mode => "mode"
            case PropertyIdentifier_Enum.operation_expected => "operation_expected"
            case PropertyIdentifier_Enum.setting => "setting"
            case PropertyIdentifier_Enum.silenced => "silenced"
            case PropertyIdentifier_Enum.tracking_value => "tracking_value"
            case PropertyIdentifier_Enum.zone_members => "zone_members"
            case PropertyIdentifier_Enum.life_safety_alarm_values => "life_safety_alarm_values"
            case PropertyIdentifier_Enum.max_segments_accepted => "max_segments_accepted"
            case PropertyIdentifier_Enum.profile_name => "profile_name"
            case PropertyIdentifier_Enum.auto_slave_discovery => "auto_slave_discovery"
            case PropertyIdentifier_Enum.manual_slave_address_binding => "manual_slave_address_binding"
            case PropertyIdentifier_Enum.slave_address_binding => "slave_address_binding"
            case PropertyIdentifier_Enum.slave_proxy_enable => "slave_proxy_enable"
            case PropertyIdentifier_Enum.last_notify_record => "last_notify_record"
            case PropertyIdentifier_Enum.schedule_default => "schedule_default"
            case PropertyIdentifier_Enum.accepted_modes => "accepted_modes"
            case PropertyIdentifier_Enum.adjust_value => "adjust_value"
            case PropertyIdentifier_Enum.count => "count"
            case PropertyIdentifier_Enum.count_before_change => "count_before_change"
            case PropertyIdentifier_Enum.count_change_time => "count_change_time"
            case PropertyIdentifier_Enum.cov_period => "cov_period"
            case PropertyIdentifier_Enum.input_reference => "input_reference"
            case PropertyIdentifier_Enum.limit_monitoring_interval => "limit_monitoring_interval"
            case PropertyIdentifier_Enum.logging_object => "logging_object"
            case PropertyIdentifier_Enum.logging_record => "logging_record"
            case PropertyIdentifier_Enum.prescale => "prescale"
            case PropertyIdentifier_Enum.pulse_rate => "pulse_rate"
            case PropertyIdentifier_Enum.scale => "scale"
            case PropertyIdentifier_Enum.scale_factor => "scale_factor"
            case PropertyIdentifier_Enum.update_time => "update_time"
            case PropertyIdentifier_Enum.value_before_change => "value_before_change"
            case PropertyIdentifier_Enum.value_set => "value_set"
            case PropertyIdentifier_Enum.value_change_time => "value_change_time"
            case PropertyIdentifier_Enum.align_intervals => "align_intervals"
            case PropertyIdentifier_Enum.interval_offset => "interval_offset"
            case PropertyIdentifier_Enum.last_restart_reason => "last_restart_reason"
            case PropertyIdentifier_Enum.logging_type => "logging_type"
            case PropertyIdentifier_Enum.restart_notification_recipients => "restart_notification_recipients"
            case PropertyIdentifier_Enum.time_of_device_restart => "time_of_device_restart"
            case PropertyIdentifier_Enum.time_synchronization_interval => "time_synchronization_interval"
            case PropertyIdentifier_Enum.trigger => "trigger"
            case PropertyIdentifier_Enum.utc_time_synchronization_recipients => "utc_time_synchronization_recipients"
            case PropertyIdentifier_Enum.node_subtype => "node_subtype"
            case PropertyIdentifier_Enum.node_type => "node_type"
            case PropertyIdentifier_Enum.structured_object_list => "structured_object_list"
            case PropertyIdentifier_Enum.subordinate_annotations => "subordinate_annotations"
            case PropertyIdentifier_Enum.subordinate_list => "subordinate_list"
            case PropertyIdentifier_Enum.actual_shed_level => "actual_shed_level"
            case PropertyIdentifier_Enum.duty_window => "duty_window"
            case PropertyIdentifier_Enum.expected_shed_level => "expected_shed_level"
            case PropertyIdentifier_Enum.full_duty_baseline => "full_duty_baseline"
            case PropertyIdentifier_Enum.requested_shed_level => "requested_shed_level"
            case PropertyIdentifier_Enum.shed_duration => "shed_duration"
            case PropertyIdentifier_Enum.shed_level_descriptions => "shed_level_descriptions"
            case PropertyIdentifier_Enum.shed_levels => "shed_levels"
            case PropertyIdentifier_Enum.state_description => "state_description"
            case PropertyIdentifier_Enum.door_alarm_state => "door_alarm_state"
            case PropertyIdentifier_Enum.door_extended_pulse_time => "door_extended_pulse_time"
            case PropertyIdentifier_Enum.door_members => "door_members"
            case PropertyIdentifier_Enum.door_open_too_long_time => "door_open_too_long_time"
            case PropertyIdentifier_Enum.door_pulse_time => "door_pulse_time"
            case PropertyIdentifier_Enum.door_status => "door_status"
            case PropertyIdentifier_Enum.door_unlock_delay_time => "door_unlock_delay_time"
            case PropertyIdentifier_Enum.lock_status => "lock_status"
            case PropertyIdentifier_Enum.masked_alarm_values => "masked_alarm_values"
            case PropertyIdentifier_Enum.secured_status => "secured_status"
            case PropertyIdentifier_Enum.absentee_limit => "absentee_limit"
            case PropertyIdentifier_Enum.access_alarm_events => "access_alarm_events"
            case PropertyIdentifier_Enum.access_doors => "access_doors"
            case PropertyIdentifier_Enum.access_event => "access_event"
            case PropertyIdentifier_Enum.access_event_authentication_factor => "access_event_authentication_factor"
            case PropertyIdentifier_Enum.access_event_credential => "access_event_credential"
            case PropertyIdentifier_Enum.access_event_time => "access_event_time"
            case PropertyIdentifier_Enum.access_transaction_events => "access_transaction_events"
            case PropertyIdentifier_Enum.accompaniment => "accompaniment"
            case PropertyIdentifier_Enum.accompaniment_time => "accompaniment_time"
            case PropertyIdentifier_Enum.activation_time => "activation_time"
            case PropertyIdentifier_Enum.active_authentication_policy => "active_authentication_policy"
            case PropertyIdentifier_Enum.assigned_access_rights => "assigned_access_rights"
            case PropertyIdentifier_Enum.authentication_factors => "authentication_factors"
            case PropertyIdentifier_Enum.authentication_policy_list => "authentication_policy_list"
            case PropertyIdentifier_Enum.authentication_policy_names => "authentication_policy_names"
            case PropertyIdentifier_Enum.authentication_status => "authentication_status"
            case PropertyIdentifier_Enum.authorization_mode => "authorization_mode"
            case PropertyIdentifier_Enum.belongs_to => "belongs_to"
            case PropertyIdentifier_Enum.credential_disable => "credential_disable"
            case PropertyIdentifier_Enum.credential_status => "credential_status"
            case PropertyIdentifier_Enum.credentials => "credentials"
            case PropertyIdentifier_Enum.credentials_in_zone => "credentials_in_zone"
            case PropertyIdentifier_Enum.days_remaining => "days_remaining"
            case PropertyIdentifier_Enum.entry_points => "entry_points"
            case PropertyIdentifier_Enum.exit_points => "exit_points"
            case PropertyIdentifier_Enum.expiration_time => "expiration_time"
            case PropertyIdentifier_Enum.extended_time_enable => "extended_time_enable"
            case PropertyIdentifier_Enum.failed_attempt_events => "failed_attempt_events"
            case PropertyIdentifier_Enum.failed_attempts => "failed_attempts"
            case PropertyIdentifier_Enum.failed_attempts_time => "failed_attempts_time"
            case PropertyIdentifier_Enum.last_access_event => "last_access_event"
            case PropertyIdentifier_Enum.last_access_point => "last_access_point"
            case PropertyIdentifier_Enum.last_credential_added => "last_credential_added"
            case PropertyIdentifier_Enum.last_credential_added_time => "last_credential_added_time"
            case PropertyIdentifier_Enum.last_credential_removed => "last_credential_removed"
            case PropertyIdentifier_Enum.last_credential_removed_time => "last_credential_removed_time"
            case PropertyIdentifier_Enum.last_use_time => "last_use_time"
            case PropertyIdentifier_Enum.lockout => "lockout"
            case PropertyIdentifier_Enum.lockout_relinquish_time => "lockout_relinquish_time"
            case PropertyIdentifier_Enum.master_exemption => "master_exemption"
            case PropertyIdentifier_Enum.max_failed_attempts => "max_failed_attempts"
            case PropertyIdentifier_Enum.members => "members"
            case PropertyIdentifier_Enum.muster_point => "muster_point"
            case PropertyIdentifier_Enum.negative_access_rules => "negative_access_rules"
            case PropertyIdentifier_Enum.number_of_authentication_policies => "number_of_authentication_policies"
            case PropertyIdentifier_Enum.occupancy_count => "occupancy_count"
            case PropertyIdentifier_Enum.occupancy_count_adjust => "occupancy_count_adjust"
            case PropertyIdentifier_Enum.occupancy_count_enable => "occupancy_count_enable"
            case PropertyIdentifier_Enum.occupancy_exemption => "occupancy_exemption"
            case PropertyIdentifier_Enum.occupancy_lower_limit => "occupancy_lower_limit"
            case PropertyIdentifier_Enum.occupancy_lower_limit_enforced => "occupancy_lower_limit_enforced"
            case PropertyIdentifier_Enum.occupancy_state => "occupancy_state"
            case PropertyIdentifier_Enum.occupancy_upper_limit => "occupancy_upper_limit"
            case PropertyIdentifier_Enum.occupancy_upper_limit_enforced => "occupancy_upper_limit_enforced"
            case PropertyIdentifier_Enum.passback_exemption => "passback_exemption"
            case PropertyIdentifier_Enum.passback_mode => "passback_mode"
            case PropertyIdentifier_Enum.passback_timeout => "passback_timeout"
            case PropertyIdentifier_Enum.positive_access_rules => "positive_access_rules"
            case PropertyIdentifier_Enum.reason_for_disable => "reason_for_disable"
            case PropertyIdentifier_Enum.supported_formats => "supported_formats"
            case PropertyIdentifier_Enum.supported_format_classes => "supported_format_classes"
            case PropertyIdentifier_Enum.threat_authority => "threat_authority"
            case PropertyIdentifier_Enum.threat_level => "threat_level"
            case PropertyIdentifier_Enum.trace_flag => "trace_flag"
            case PropertyIdentifier_Enum.transaction_notification_class => "transaction_notification_class"
            case PropertyIdentifier_Enum.user_external_identifier => "user_external_identifier"
            case PropertyIdentifier_Enum.user_information_reference => "user_information_reference"
            case PropertyIdentifier_Enum.user_name => "user_name"
            case PropertyIdentifier_Enum.user_type => "user_type"
            case PropertyIdentifier_Enum.uses_remaining => "uses_remaining"
            case PropertyIdentifier_Enum.zone_from => "zone_from"
            case PropertyIdentifier_Enum.zone_to => "zone_to"
            case PropertyIdentifier_Enum.access_event_tag => "access_event_tag"
            case PropertyIdentifier_Enum.global_identifier => "global_identifier"
            case PropertyIdentifier_Enum.verification_time => "verification_time"
            case PropertyIdentifier_Enum.backup_and_restore_state => "backup_and_restore_state"
            case PropertyIdentifier_Enum.backup_preparation_time => "backup_preparation_time"
            case PropertyIdentifier_Enum.restore_completion_time => "restore_completion_time"
            case PropertyIdentifier_Enum.restore_preparation_time => "restore_preparation_time"
            case PropertyIdentifier_Enum.bit_mask => "bit_mask"
            case PropertyIdentifier_Enum.bit_text => "bit_text"
            case PropertyIdentifier_Enum.is_utc => "is_utc"
            case PropertyIdentifier_Enum.group_members => "group_members"
            case PropertyIdentifier_Enum.group_member_names => "group_member_names"
            case PropertyIdentifier_Enum.member_status_flags => "member_status_flags"
            case PropertyIdentifier_Enum.requested_update_interval => "requested_update_interval"
            case PropertyIdentifier_Enum.covu_period => "covu_period"
            case PropertyIdentifier_Enum.covu_recipients => "covu_recipients"
            case PropertyIdentifier_Enum.event_message_texts => "event_message_texts"
            case PropertyIdentifier_Enum.event_message_texts_config => "event_message_texts_config"
            case PropertyIdentifier_Enum.event_detection_enable => "event_detection_enable"
            case PropertyIdentifier_Enum.event_algorithm_inhibit => "event_algorithm_inhibit"
            case PropertyIdentifier_Enum.event_algorithm_inhibit_ref => "event_algorithm_inhibit_ref"
            case PropertyIdentifier_Enum.time_delay_normal => "time_delay_normal"
            case PropertyIdentifier_Enum.reliability_evaluation_inhibit => "reliability_evaluation_inhibit"
            case PropertyIdentifier_Enum.fault_parameters => "fault_parameters"
            case PropertyIdentifier_Enum.fault_type => "fault_type"
            case PropertyIdentifier_Enum.local_forwarding_only => "local_forwarding_only"
            case PropertyIdentifier_Enum.process_identifier_filter => "process_identifier_filter"
            case PropertyIdentifier_Enum.subscribed_recipients => "subscribed_recipients"
            case PropertyIdentifier_Enum.port_filter => "port_filter"
            case PropertyIdentifier_Enum.authorization_exemptions => "authorization_exemptions"
            case PropertyIdentifier_Enum.allow_group_delay_inhibit => "allow_group_delay_inhibit"
            case PropertyIdentifier_Enum.channel_number => "channel_number"
            case PropertyIdentifier_Enum.control_groups => "control_groups"
            case PropertyIdentifier_Enum.execution_delay => "execution_delay"
            case PropertyIdentifier_Enum.last_priority => "last_priority"
            case PropertyIdentifier_Enum.write_status => "write_status"
            case PropertyIdentifier_Enum.property_list => "property_list"
            case PropertyIdentifier_Enum.serial_number => "serial_number"
            case PropertyIdentifier_Enum.blink_warn_enable => "blink_warn_enable"
            case PropertyIdentifier_Enum.default_fade_time => "default_fade_time"
            case PropertyIdentifier_Enum.default_ramp_rate => "default_ramp_rate"
            case PropertyIdentifier_Enum.default_step_increment => "default_step_increment"
            case PropertyIdentifier_Enum.egress_time => "egress_time"
            case PropertyIdentifier_Enum.in_progress => "in_progress"
            case PropertyIdentifier_Enum.instantaneous_power => "instantaneous_power"
            case PropertyIdentifier_Enum.lighting_command => "lighting_command"
            case PropertyIdentifier_Enum.lighting_command_default_priority => "lighting_command_default_priority"
            case PropertyIdentifier_Enum.max_actual_value => "max_actual_value"
            case PropertyIdentifier_Enum.min_actual_value => "min_actual_value"
            case PropertyIdentifier_Enum.power => "power"
            case PropertyIdentifier_Enum.transition => "transition"
            case PropertyIdentifier_Enum.egress_active => "egress_active"
            case PropertyIdentifier_Enum.interface_value => "interface_value"
            case PropertyIdentifier_Enum.fault_high_limit => "fault_high_limit"
            case PropertyIdentifier_Enum.fault_low_limit => "fault_low_limit"
            case PropertyIdentifier_Enum.low_diff_limit => "low_diff_limit"
            case PropertyIdentifier_Enum.strike_count => "strike_count"
            case PropertyIdentifier_Enum.time_of_strike_count_reset => "time_of_strike_count_reset"
            case PropertyIdentifier_Enum.default_timeout => "default_timeout"
            case PropertyIdentifier_Enum.initial_timeout => "initial_timeout"
            case PropertyIdentifier_Enum.last_state_change => "last_state_change"
            case PropertyIdentifier_Enum.state_change_values => "state_change_values"
            case PropertyIdentifier_Enum.timer_running => "timer_running"
            case PropertyIdentifier_Enum.timer_state => "timer_state"
            case PropertyIdentifier_Enum.apdu_length => "apdu_length"
            case PropertyIdentifier_Enum.ip_address => "ip_address"
            case PropertyIdentifier_Enum.ip_default_gateway => "ip_default_gateway"
            case PropertyIdentifier_Enum.ip_dhcp_enable => "ip_dhcp_enable"
            case PropertyIdentifier_Enum.ip_dhcp_lease_time => "ip_dhcp_lease_time"
            case PropertyIdentifier_Enum.ip_dhcp_lease_time_remaining => "ip_dhcp_lease_time_remaining"
            case PropertyIdentifier_Enum.ip_dhcp_server => "ip_dhcp_server"
            case PropertyIdentifier_Enum.ip_dns_server => "ip_dns_server"
            case PropertyIdentifier_Enum.bacnet_ip_global_address => "bacnet_ip_global_address"
            case PropertyIdentifier_Enum.bacnet_ip_mode => "bacnet_ip_mode"
            case PropertyIdentifier_Enum.bacnet_ip_multicast_address => "bacnet_ip_multicast_address"
            case PropertyIdentifier_Enum.bacnet_ip_nat_traversal => "bacnet_ip_nat_traversal"
            case PropertyIdentifier_Enum.ip_subnet_mask => "ip_subnet_mask"
            case PropertyIdentifier_Enum.bacnet_ip_udp_port => "bacnet_ip_udp_port"
            case PropertyIdentifier_Enum.bbmd_accept_fd_registrations => "bbmd_accept_fd_registrations"
            case PropertyIdentifier_Enum.bbmd_broadcast_distribution_table => "bbmd_broadcast_distribution_table"
            case PropertyIdentifier_Enum.bbmd_foreign_device_table => "bbmd_foreign_device_table"
            case PropertyIdentifier_Enum.changes_pending => "changes_pending"
            case PropertyIdentifier_Enum.command => "command"
            case PropertyIdentifier_Enum.fd_bbmd_address => "fd_bbmd_address"
            case PropertyIdentifier_Enum.fd_subscription_lifetime => "fd_subscription_lifetime"
            case PropertyIdentifier_Enum.link_speed => "link_speed"
            case PropertyIdentifier_Enum.link_speeds => "link_speeds"
            case PropertyIdentifier_Enum.link_speed_autonegotiate => "link_speed_autonegotiate"
            case PropertyIdentifier_Enum.mac_address => "mac_address"
            case PropertyIdentifier_Enum.network_interface_name => "network_interface_name"
            case PropertyIdentifier_Enum.network_number => "network_number"
            case PropertyIdentifier_Enum.network_number_quality => "network_number_quality"
            case PropertyIdentifier_Enum.network_type => "network_type"
            case PropertyIdentifier_Enum.routing_table => "routing_table"
            case PropertyIdentifier_Enum.virtual_mac_address_table => "virtual_mac_address_table"
            case PropertyIdentifier_Enum.command_time_array => "command_time_array"
            case PropertyIdentifier_Enum.current_command_priority => "current_command_priority"
            case PropertyIdentifier_Enum.last_command_time => "last_command_time"
            case PropertyIdentifier_Enum.value_source => "value_source"
            case PropertyIdentifier_Enum.value_source_array => "value_source_array"
            case PropertyIdentifier_Enum.bacnet_ipv6_mode => "bacnet_ipv6_mode"
            case PropertyIdentifier_Enum.ipv6_address => "ipv6_address"
            case PropertyIdentifier_Enum.ipv6_prefix_length => "ipv6_prefix_length"
            case PropertyIdentifier_Enum.bacnet_ipv6_udp_port => "bacnet_ipv6_udp_port"
            case PropertyIdentifier_Enum.ipv6_default_gateway => "ipv6_default_gateway"
            case PropertyIdentifier_Enum.bacnet_ipv6_multicast_address => "bacnet_ipv6_multicast_address"
            case PropertyIdentifier_Enum.ipv6_dns_server => "ipv6_dns_server"
            case PropertyIdentifier_Enum.ipv6_auto_addressing_enable => "ipv6_auto_addressing_enable"
            case PropertyIdentifier_Enum.ipv6_dhcp_lease_time => "ipv6_dhcp_lease_time"
            case PropertyIdentifier_Enum.ipv6_dhcp_lease_time_remaining => "ipv6_dhcp_lease_time_remaining"
            case PropertyIdentifier_Enum.ipv6_dhcp_server => "ipv6_dhcp_server"
            case PropertyIdentifier_Enum.ipv6_zone_index => "ipv6_zone_index"
            case PropertyIdentifier_Enum.assigned_landing_calls => "assigned_landing_calls"
            case PropertyIdentifier_Enum.car_assigned_direction => "car_assigned_direction"
            case PropertyIdentifier_Enum.car_door_command => "car_door_command"
            case PropertyIdentifier_Enum.car_door_status => "car_door_status"
            case PropertyIdentifier_Enum.car_door_text => "car_door_text"
            case PropertyIdentifier_Enum.car_door_zone => "car_door_zone"
            case PropertyIdentifier_Enum.car_drive_status => "car_drive_status"
            case PropertyIdentifier_Enum.car_load => "car_load"
            case PropertyIdentifier_Enum.car_load_units => "car_load_units"
            case PropertyIdentifier_Enum.car_mode => "car_mode"
            case PropertyIdentifier_Enum.car_moving_direction => "car_moving_direction"
            case PropertyIdentifier_Enum.car_position => "car_position"
            case PropertyIdentifier_Enum.elevator_group => "elevator_group"
            case PropertyIdentifier_Enum.energy_meter => "energy_meter"
            case PropertyIdentifier_Enum.energy_meter_ref => "energy_meter_ref"
            case PropertyIdentifier_Enum.escalator_mode => "escalator_mode"
            case PropertyIdentifier_Enum.fault_signals => "fault_signals"
            case PropertyIdentifier_Enum.floor_text => "floor_text"
            case PropertyIdentifier_Enum.group_id => "group_id"
            case PropertyIdentifier_Enum.group_mode => "group_mode"
            case PropertyIdentifier_Enum.higher_deck => "higher_deck"
            case PropertyIdentifier_Enum.installation_id => "installation_id"
            case PropertyIdentifier_Enum.landing_calls => "landing_calls"
            case PropertyIdentifier_Enum.landing_call_control => "landing_call_control"
            case PropertyIdentifier_Enum.landing_door_status => "landing_door_status"
            case PropertyIdentifier_Enum.lower_deck => "lower_deck"
            case PropertyIdentifier_Enum.machine_room_id => "machine_room_id"
            case PropertyIdentifier_Enum.making_car_call => "making_car_call"
            case PropertyIdentifier_Enum.next_stopping_floor => "next_stopping_floor"
            case PropertyIdentifier_Enum.operation_direction => "operation_direction"
            case PropertyIdentifier_Enum.passenger_alarm => "passenger_alarm"
            case PropertyIdentifier_Enum.power_mode => "power_mode"
            case PropertyIdentifier_Enum.registered_car_call => "registered_car_call"
            case PropertyIdentifier_Enum.active_cov_multiple_subscriptions => "active_cov_multiple_subscriptions"
            case PropertyIdentifier_Enum.protocol_level => "protocol_level"
            case PropertyIdentifier_Enum.reference_port => "reference_port"
            case PropertyIdentifier_Enum.deployed_profile_location => "deployed_profile_location"
            case PropertyIdentifier_Enum.profile_location => "profile_location"
            case PropertyIdentifier_Enum.tags => "tags"
            case PropertyIdentifier_Enum.subordinate_node_types => "subordinate_node_types"
            case PropertyIdentifier_Enum.subordinate_tags => "subordinate_tags"
            case PropertyIdentifier_Enum.subordinate_relationships => "subordinate_relationships"
            case PropertyIdentifier_Enum.default_subordinate_relationship => "default_subordinate_relationship"
            case PropertyIdentifier_Enum.represents => "represents"
            case PropertyIdentifier_Enum.default_present_value => "default_present_value"
            case PropertyIdentifier_Enum.present_stage => "present_stage"
            case PropertyIdentifier_Enum.stages => "stages"
            case PropertyIdentifier_Enum.stage_names => "stage_names"
            case PropertyIdentifier_Enum.target_references => "target_references"
            case PropertyIdentifier_Enum.audit_source_reporter => "audit_source_reporter"
            case PropertyIdentifier_Enum.audit_level => "audit_level"
            case PropertyIdentifier_Enum.audit_notification_recipient => "audit_notification_recipient"
            case PropertyIdentifier_Enum.auditable_priority_filter => "auditable_priority_filter"
            case PropertyIdentifier_Enum.auditable_operations => "auditable_operations"
            case PropertyIdentifier_Enum.delete_on_forward => "delete_on_forward"
            case PropertyIdentifier_Enum.maximum_send_delay => "maximum_send_delay"
            case PropertyIdentifier_Enum.monitored_objects => "monitored_objects"
            case PropertyIdentifier_Enum.send_now => "send_now"
            case PropertyIdentifier_Enum.floor_number => "floor_number"
            case PropertyIdentifier_Enum.device_uuid => "device_uuid"
            case PropertyIdentifier_Enum.reserved(x) => "reserved_${x}"
            case PropertyIdentifier_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): PropertyIdentifier_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "acked_transitions" => PropertyIdentifier_Enum.acked_transitions
            case "ack_required" => PropertyIdentifier_Enum.ack_required
            case "action" => PropertyIdentifier_Enum.action
            case "action_text" => PropertyIdentifier_Enum.action_text
            case "active_text" => PropertyIdentifier_Enum.active_text
            case "active_vt_sessions" => PropertyIdentifier_Enum.active_vt_sessions
            case "alarm_value" => PropertyIdentifier_Enum.alarm_value
            case "alarm_values" => PropertyIdentifier_Enum.alarm_values
            case "all" => PropertyIdentifier_Enum.all
            case "all_writes_successful" => PropertyIdentifier_Enum.all_writes_successful
            case "apdu_segment_timeout" => PropertyIdentifier_Enum.apdu_segment_timeout
            case "apdu_timeout" => PropertyIdentifier_Enum.apdu_timeout
            case "application_software_version" => PropertyIdentifier_Enum.application_software_version
            case "archive" => PropertyIdentifier_Enum.archive
            case "bias" => PropertyIdentifier_Enum.bias
            case "change_of_state_count" => PropertyIdentifier_Enum.change_of_state_count
            case "change_of_state_time" => PropertyIdentifier_Enum.change_of_state_time
            case "notification_class" => PropertyIdentifier_Enum.notification_class
            case "controlled_variable_reference" => PropertyIdentifier_Enum.controlled_variable_reference
            case "controlled_variable_units" => PropertyIdentifier_Enum.controlled_variable_units
            case "controlled_variable_value" => PropertyIdentifier_Enum.controlled_variable_value
            case "cov_increment" => PropertyIdentifier_Enum.cov_increment
            case "date_list" => PropertyIdentifier_Enum.date_list
            case "daylight_savings_status" => PropertyIdentifier_Enum.daylight_savings_status
            case "deadband" => PropertyIdentifier_Enum.deadband
            case "derivative_constant" => PropertyIdentifier_Enum.derivative_constant
            case "derivative_constant_units" => PropertyIdentifier_Enum.derivative_constant_units
            case "description" => PropertyIdentifier_Enum.description
            case "description_of_halt" => PropertyIdentifier_Enum.description_of_halt
            case "device_address_binding" => PropertyIdentifier_Enum.device_address_binding
            case "device_type" => PropertyIdentifier_Enum.device_type
            case "effective_period" => PropertyIdentifier_Enum.effective_period
            case "elapsed_active_time" => PropertyIdentifier_Enum.elapsed_active_time
            case "error_limit" => PropertyIdentifier_Enum.error_limit
            case "event_enable" => PropertyIdentifier_Enum.event_enable
            case "event_state" => PropertyIdentifier_Enum.event_state
            case "event_type" => PropertyIdentifier_Enum.event_type
            case "exception_schedule" => PropertyIdentifier_Enum.exception_schedule
            case "fault_values" => PropertyIdentifier_Enum.fault_values
            case "feedback_value" => PropertyIdentifier_Enum.feedback_value
            case "file_access_method" => PropertyIdentifier_Enum.file_access_method
            case "file_size" => PropertyIdentifier_Enum.file_size
            case "file_type" => PropertyIdentifier_Enum.file_type
            case "firmware_revision" => PropertyIdentifier_Enum.firmware_revision
            case "high_limit" => PropertyIdentifier_Enum.high_limit
            case "inactive_text" => PropertyIdentifier_Enum.inactive_text
            case "in_process" => PropertyIdentifier_Enum.in_process
            case "instance_of" => PropertyIdentifier_Enum.instance_of
            case "integral_constant" => PropertyIdentifier_Enum.integral_constant
            case "integral_constant_units" => PropertyIdentifier_Enum.integral_constant_units
            case "issue_confirmed_notifications" => PropertyIdentifier_Enum.issue_confirmed_notifications
            case "limit_enable" => PropertyIdentifier_Enum.limit_enable
            case "list_of_group_members" => PropertyIdentifier_Enum.list_of_group_members
            case "list_of_object_property_references" => PropertyIdentifier_Enum.list_of_object_property_references
            case "list_of_session_keys" => PropertyIdentifier_Enum.list_of_session_keys
            case "local_date" => PropertyIdentifier_Enum.local_date
            case "local_time" => PropertyIdentifier_Enum.local_time
            case "location" => PropertyIdentifier_Enum.location
            case "low_limit" => PropertyIdentifier_Enum.low_limit
            case "manipulated_variable_reference" => PropertyIdentifier_Enum.manipulated_variable_reference
            case "maximum_output" => PropertyIdentifier_Enum.maximum_output
            case "max_apdu_length_accepted" => PropertyIdentifier_Enum.max_apdu_length_accepted
            case "max_info_frames" => PropertyIdentifier_Enum.max_info_frames
            case "max_master" => PropertyIdentifier_Enum.max_master
            case "max_pres_value" => PropertyIdentifier_Enum.max_pres_value
            case "minimum_off_time" => PropertyIdentifier_Enum.minimum_off_time
            case "minimum_on_time" => PropertyIdentifier_Enum.minimum_on_time
            case "minimum_output" => PropertyIdentifier_Enum.minimum_output
            case "min_pres_value" => PropertyIdentifier_Enum.min_pres_value
            case "model_name" => PropertyIdentifier_Enum.model_name
            case "modification_date" => PropertyIdentifier_Enum.modification_date
            case "notify_type" => PropertyIdentifier_Enum.notify_type
            case "number_of_apdu_retries" => PropertyIdentifier_Enum.number_of_apdu_retries
            case "number_of_states" => PropertyIdentifier_Enum.number_of_states
            case "object_identifier" => PropertyIdentifier_Enum.object_identifier
            case "object_list" => PropertyIdentifier_Enum.object_list
            case "object_name" => PropertyIdentifier_Enum.object_name
            case "object_property_reference" => PropertyIdentifier_Enum.object_property_reference
            case "object_type" => PropertyIdentifier_Enum.object_type
            case "optional" => PropertyIdentifier_Enum.optional
            case "out_of_service" => PropertyIdentifier_Enum.out_of_service
            case "output_units" => PropertyIdentifier_Enum.output_units
            case "event_parameters" => PropertyIdentifier_Enum.event_parameters
            case "polarity" => PropertyIdentifier_Enum.polarity
            case "present_value" => PropertyIdentifier_Enum.present_value
            case "priority" => PropertyIdentifier_Enum.priority
            case "priority_array" => PropertyIdentifier_Enum.priority_array
            case "priority_for_writing" => PropertyIdentifier_Enum.priority_for_writing
            case "process_identifier" => PropertyIdentifier_Enum.process_identifier
            case "program_change" => PropertyIdentifier_Enum.program_change
            case "program_location" => PropertyIdentifier_Enum.program_location
            case "program_state" => PropertyIdentifier_Enum.program_state
            case "proportional_constant" => PropertyIdentifier_Enum.proportional_constant
            case "proportional_constant_units" => PropertyIdentifier_Enum.proportional_constant_units
            case "protocol_conformance_class" => PropertyIdentifier_Enum.protocol_conformance_class
            case "protocol_object_types_supported" => PropertyIdentifier_Enum.protocol_object_types_supported
            case "protocol_services_supported" => PropertyIdentifier_Enum.protocol_services_supported
            case "protocol_version" => PropertyIdentifier_Enum.protocol_version
            case "read_only" => PropertyIdentifier_Enum.read_only
            case "reason_for_halt" => PropertyIdentifier_Enum.reason_for_halt
            case "recipient" => PropertyIdentifier_Enum.recipient
            case "recipient_list" => PropertyIdentifier_Enum.recipient_list
            case "reliability" => PropertyIdentifier_Enum.reliability
            case "relinquish_default" => PropertyIdentifier_Enum.relinquish_default
            case "required" => PropertyIdentifier_Enum.required
            case "resolution" => PropertyIdentifier_Enum.resolution
            case "segmentation_supported" => PropertyIdentifier_Enum.segmentation_supported
            case "setpoint" => PropertyIdentifier_Enum.setpoint
            case "setpoint_reference" => PropertyIdentifier_Enum.setpoint_reference
            case "state_text" => PropertyIdentifier_Enum.state_text
            case "status_flags" => PropertyIdentifier_Enum.status_flags
            case "system_status" => PropertyIdentifier_Enum.system_status
            case "time_delay" => PropertyIdentifier_Enum.time_delay
            case "time_of_active_time_reset" => PropertyIdentifier_Enum.time_of_active_time_reset
            case "time_of_state_count_reset" => PropertyIdentifier_Enum.time_of_state_count_reset
            case "time_synchronization_recipients" => PropertyIdentifier_Enum.time_synchronization_recipients
            case "units" => PropertyIdentifier_Enum.units
            case "update_interval" => PropertyIdentifier_Enum.update_interval
            case "utc_offset" => PropertyIdentifier_Enum.utc_offset
            case "vendor_identifier" => PropertyIdentifier_Enum.vendor_identifier
            case "vendor_name" => PropertyIdentifier_Enum.vendor_name
            case "vt_classes_supported" => PropertyIdentifier_Enum.vt_classes_supported
            case "weekly_schedule" => PropertyIdentifier_Enum.weekly_schedule
            case "attempted_samples" => PropertyIdentifier_Enum.attempted_samples
            case "average_value" => PropertyIdentifier_Enum.average_value
            case "buffer_size" => PropertyIdentifier_Enum.buffer_size
            case "client_cov_increment" => PropertyIdentifier_Enum.client_cov_increment
            case "cov_resubscription_interval" => PropertyIdentifier_Enum.cov_resubscription_interval
            case "current_notify_time" => PropertyIdentifier_Enum.current_notify_time
            case "event_time_stamps" => PropertyIdentifier_Enum.event_time_stamps
            case "log_buffer" => PropertyIdentifier_Enum.log_buffer
            case "log_device_object_property" => PropertyIdentifier_Enum.log_device_object_property
            case "enable" => PropertyIdentifier_Enum.enable
            case "log_interval" => PropertyIdentifier_Enum.log_interval
            case "maximum_value" => PropertyIdentifier_Enum.maximum_value
            case "minimum_value" => PropertyIdentifier_Enum.minimum_value
            case "notification_threshold" => PropertyIdentifier_Enum.notification_threshold
            case "previous_notify_time" => PropertyIdentifier_Enum.previous_notify_time
            case "protocol_revision" => PropertyIdentifier_Enum.protocol_revision
            case "records_since_notification" => PropertyIdentifier_Enum.records_since_notification
            case "record_count" => PropertyIdentifier_Enum.record_count
            case "start_time" => PropertyIdentifier_Enum.start_time
            case "stop_time" => PropertyIdentifier_Enum.stop_time
            case "stop_when_full" => PropertyIdentifier_Enum.stop_when_full
            case "total_record_count" => PropertyIdentifier_Enum.total_record_count
            case "valid_samples" => PropertyIdentifier_Enum.valid_samples
            case "window_interval" => PropertyIdentifier_Enum.window_interval
            case "window_samples" => PropertyIdentifier_Enum.window_samples
            case "maximum_value_timestamp" => PropertyIdentifier_Enum.maximum_value_timestamp
            case "minimum_value_timestamp" => PropertyIdentifier_Enum.minimum_value_timestamp
            case "variance_value" => PropertyIdentifier_Enum.variance_value
            case "active_cov_subscriptions" => PropertyIdentifier_Enum.active_cov_subscriptions
            case "backup_failure_timeout" => PropertyIdentifier_Enum.backup_failure_timeout
            case "configuration_files" => PropertyIdentifier_Enum.configuration_files
            case "database_revision" => PropertyIdentifier_Enum.database_revision
            case "direct_reading" => PropertyIdentifier_Enum.direct_reading
            case "last_restore_time" => PropertyIdentifier_Enum.last_restore_time
            case "maintenance_required" => PropertyIdentifier_Enum.maintenance_required
            case "member_of" => PropertyIdentifier_Enum.member_of
            case "mode" => PropertyIdentifier_Enum.mode
            case "operation_expected" => PropertyIdentifier_Enum.operation_expected
            case "setting" => PropertyIdentifier_Enum.setting
            case "silenced" => PropertyIdentifier_Enum.silenced
            case "tracking_value" => PropertyIdentifier_Enum.tracking_value
            case "zone_members" => PropertyIdentifier_Enum.zone_members
            case "life_safety_alarm_values" => PropertyIdentifier_Enum.life_safety_alarm_values
            case "max_segments_accepted" => PropertyIdentifier_Enum.max_segments_accepted
            case "profile_name" => PropertyIdentifier_Enum.profile_name
            case "auto_slave_discovery" => PropertyIdentifier_Enum.auto_slave_discovery
            case "manual_slave_address_binding" => PropertyIdentifier_Enum.manual_slave_address_binding
            case "slave_address_binding" => PropertyIdentifier_Enum.slave_address_binding
            case "slave_proxy_enable" => PropertyIdentifier_Enum.slave_proxy_enable
            case "last_notify_record" => PropertyIdentifier_Enum.last_notify_record
            case "schedule_default" => PropertyIdentifier_Enum.schedule_default
            case "accepted_modes" => PropertyIdentifier_Enum.accepted_modes
            case "adjust_value" => PropertyIdentifier_Enum.adjust_value
            case "count" => PropertyIdentifier_Enum.count
            case "count_before_change" => PropertyIdentifier_Enum.count_before_change
            case "count_change_time" => PropertyIdentifier_Enum.count_change_time
            case "cov_period" => PropertyIdentifier_Enum.cov_period
            case "input_reference" => PropertyIdentifier_Enum.input_reference
            case "limit_monitoring_interval" => PropertyIdentifier_Enum.limit_monitoring_interval
            case "logging_object" => PropertyIdentifier_Enum.logging_object
            case "logging_record" => PropertyIdentifier_Enum.logging_record
            case "prescale" => PropertyIdentifier_Enum.prescale
            case "pulse_rate" => PropertyIdentifier_Enum.pulse_rate
            case "scale" => PropertyIdentifier_Enum.scale
            case "scale_factor" => PropertyIdentifier_Enum.scale_factor
            case "update_time" => PropertyIdentifier_Enum.update_time
            case "value_before_change" => PropertyIdentifier_Enum.value_before_change
            case "value_set" => PropertyIdentifier_Enum.value_set
            case "value_change_time" => PropertyIdentifier_Enum.value_change_time
            case "align_intervals" => PropertyIdentifier_Enum.align_intervals
            case "interval_offset" => PropertyIdentifier_Enum.interval_offset
            case "last_restart_reason" => PropertyIdentifier_Enum.last_restart_reason
            case "logging_type" => PropertyIdentifier_Enum.logging_type
            case "restart_notification_recipients" => PropertyIdentifier_Enum.restart_notification_recipients
            case "time_of_device_restart" => PropertyIdentifier_Enum.time_of_device_restart
            case "time_synchronization_interval" => PropertyIdentifier_Enum.time_synchronization_interval
            case "trigger" => PropertyIdentifier_Enum.trigger
            case "utc_time_synchronization_recipients" => PropertyIdentifier_Enum.utc_time_synchronization_recipients
            case "node_subtype" => PropertyIdentifier_Enum.node_subtype
            case "node_type" => PropertyIdentifier_Enum.node_type
            case "structured_object_list" => PropertyIdentifier_Enum.structured_object_list
            case "subordinate_annotations" => PropertyIdentifier_Enum.subordinate_annotations
            case "subordinate_list" => PropertyIdentifier_Enum.subordinate_list
            case "actual_shed_level" => PropertyIdentifier_Enum.actual_shed_level
            case "duty_window" => PropertyIdentifier_Enum.duty_window
            case "expected_shed_level" => PropertyIdentifier_Enum.expected_shed_level
            case "full_duty_baseline" => PropertyIdentifier_Enum.full_duty_baseline
            case "requested_shed_level" => PropertyIdentifier_Enum.requested_shed_level
            case "shed_duration" => PropertyIdentifier_Enum.shed_duration
            case "shed_level_descriptions" => PropertyIdentifier_Enum.shed_level_descriptions
            case "shed_levels" => PropertyIdentifier_Enum.shed_levels
            case "state_description" => PropertyIdentifier_Enum.state_description
            case "door_alarm_state" => PropertyIdentifier_Enum.door_alarm_state
            case "door_extended_pulse_time" => PropertyIdentifier_Enum.door_extended_pulse_time
            case "door_members" => PropertyIdentifier_Enum.door_members
            case "door_open_too_long_time" => PropertyIdentifier_Enum.door_open_too_long_time
            case "door_pulse_time" => PropertyIdentifier_Enum.door_pulse_time
            case "door_status" => PropertyIdentifier_Enum.door_status
            case "door_unlock_delay_time" => PropertyIdentifier_Enum.door_unlock_delay_time
            case "lock_status" => PropertyIdentifier_Enum.lock_status
            case "masked_alarm_values" => PropertyIdentifier_Enum.masked_alarm_values
            case "secured_status" => PropertyIdentifier_Enum.secured_status
            case "absentee_limit" => PropertyIdentifier_Enum.absentee_limit
            case "access_alarm_events" => PropertyIdentifier_Enum.access_alarm_events
            case "access_doors" => PropertyIdentifier_Enum.access_doors
            case "access_event" => PropertyIdentifier_Enum.access_event
            case "access_event_authentication_factor" => PropertyIdentifier_Enum.access_event_authentication_factor
            case "access_event_credential" => PropertyIdentifier_Enum.access_event_credential
            case "access_event_time" => PropertyIdentifier_Enum.access_event_time
            case "access_transaction_events" => PropertyIdentifier_Enum.access_transaction_events
            case "accompaniment" => PropertyIdentifier_Enum.accompaniment
            case "accompaniment_time" => PropertyIdentifier_Enum.accompaniment_time
            case "activation_time" => PropertyIdentifier_Enum.activation_time
            case "active_authentication_policy" => PropertyIdentifier_Enum.active_authentication_policy
            case "assigned_access_rights" => PropertyIdentifier_Enum.assigned_access_rights
            case "authentication_factors" => PropertyIdentifier_Enum.authentication_factors
            case "authentication_policy_list" => PropertyIdentifier_Enum.authentication_policy_list
            case "authentication_policy_names" => PropertyIdentifier_Enum.authentication_policy_names
            case "authentication_status" => PropertyIdentifier_Enum.authentication_status
            case "authorization_mode" => PropertyIdentifier_Enum.authorization_mode
            case "belongs_to" => PropertyIdentifier_Enum.belongs_to
            case "credential_disable" => PropertyIdentifier_Enum.credential_disable
            case "credential_status" => PropertyIdentifier_Enum.credential_status
            case "credentials" => PropertyIdentifier_Enum.credentials
            case "credentials_in_zone" => PropertyIdentifier_Enum.credentials_in_zone
            case "days_remaining" => PropertyIdentifier_Enum.days_remaining
            case "entry_points" => PropertyIdentifier_Enum.entry_points
            case "exit_points" => PropertyIdentifier_Enum.exit_points
            case "expiration_time" => PropertyIdentifier_Enum.expiration_time
            case "extended_time_enable" => PropertyIdentifier_Enum.extended_time_enable
            case "failed_attempt_events" => PropertyIdentifier_Enum.failed_attempt_events
            case "failed_attempts" => PropertyIdentifier_Enum.failed_attempts
            case "failed_attempts_time" => PropertyIdentifier_Enum.failed_attempts_time
            case "last_access_event" => PropertyIdentifier_Enum.last_access_event
            case "last_access_point" => PropertyIdentifier_Enum.last_access_point
            case "last_credential_added" => PropertyIdentifier_Enum.last_credential_added
            case "last_credential_added_time" => PropertyIdentifier_Enum.last_credential_added_time
            case "last_credential_removed" => PropertyIdentifier_Enum.last_credential_removed
            case "last_credential_removed_time" => PropertyIdentifier_Enum.last_credential_removed_time
            case "last_use_time" => PropertyIdentifier_Enum.last_use_time
            case "lockout" => PropertyIdentifier_Enum.lockout
            case "lockout_relinquish_time" => PropertyIdentifier_Enum.lockout_relinquish_time
            case "master_exemption" => PropertyIdentifier_Enum.master_exemption
            case "max_failed_attempts" => PropertyIdentifier_Enum.max_failed_attempts
            case "members" => PropertyIdentifier_Enum.members
            case "muster_point" => PropertyIdentifier_Enum.muster_point
            case "negative_access_rules" => PropertyIdentifier_Enum.negative_access_rules
            case "number_of_authentication_policies" => PropertyIdentifier_Enum.number_of_authentication_policies
            case "occupancy_count" => PropertyIdentifier_Enum.occupancy_count
            case "occupancy_count_adjust" => PropertyIdentifier_Enum.occupancy_count_adjust
            case "occupancy_count_enable" => PropertyIdentifier_Enum.occupancy_count_enable
            case "occupancy_exemption" => PropertyIdentifier_Enum.occupancy_exemption
            case "occupancy_lower_limit" => PropertyIdentifier_Enum.occupancy_lower_limit
            case "occupancy_lower_limit_enforced" => PropertyIdentifier_Enum.occupancy_lower_limit_enforced
            case "occupancy_state" => PropertyIdentifier_Enum.occupancy_state
            case "occupancy_upper_limit" => PropertyIdentifier_Enum.occupancy_upper_limit
            case "occupancy_upper_limit_enforced" => PropertyIdentifier_Enum.occupancy_upper_limit_enforced
            case "passback_exemption" => PropertyIdentifier_Enum.passback_exemption
            case "passback_mode" => PropertyIdentifier_Enum.passback_mode
            case "passback_timeout" => PropertyIdentifier_Enum.passback_timeout
            case "positive_access_rules" => PropertyIdentifier_Enum.positive_access_rules
            case "reason_for_disable" => PropertyIdentifier_Enum.reason_for_disable
            case "supported_formats" => PropertyIdentifier_Enum.supported_formats
            case "supported_format_classes" => PropertyIdentifier_Enum.supported_format_classes
            case "threat_authority" => PropertyIdentifier_Enum.threat_authority
            case "threat_level" => PropertyIdentifier_Enum.threat_level
            case "trace_flag" => PropertyIdentifier_Enum.trace_flag
            case "transaction_notification_class" => PropertyIdentifier_Enum.transaction_notification_class
            case "user_external_identifier" => PropertyIdentifier_Enum.user_external_identifier
            case "user_information_reference" => PropertyIdentifier_Enum.user_information_reference
            case "user_name" => PropertyIdentifier_Enum.user_name
            case "user_type" => PropertyIdentifier_Enum.user_type
            case "uses_remaining" => PropertyIdentifier_Enum.uses_remaining
            case "zone_from" => PropertyIdentifier_Enum.zone_from
            case "zone_to" => PropertyIdentifier_Enum.zone_to
            case "access_event_tag" => PropertyIdentifier_Enum.access_event_tag
            case "global_identifier" => PropertyIdentifier_Enum.global_identifier
            case "verification_time" => PropertyIdentifier_Enum.verification_time
            case "backup_and_restore_state" => PropertyIdentifier_Enum.backup_and_restore_state
            case "backup_preparation_time" => PropertyIdentifier_Enum.backup_preparation_time
            case "restore_completion_time" => PropertyIdentifier_Enum.restore_completion_time
            case "restore_preparation_time" => PropertyIdentifier_Enum.restore_preparation_time
            case "bit_mask" => PropertyIdentifier_Enum.bit_mask
            case "bit_text" => PropertyIdentifier_Enum.bit_text
            case "is_utc" => PropertyIdentifier_Enum.is_utc
            case "group_members" => PropertyIdentifier_Enum.group_members
            case "group_member_names" => PropertyIdentifier_Enum.group_member_names
            case "member_status_flags" => PropertyIdentifier_Enum.member_status_flags
            case "requested_update_interval" => PropertyIdentifier_Enum.requested_update_interval
            case "covu_period" => PropertyIdentifier_Enum.covu_period
            case "covu_recipients" => PropertyIdentifier_Enum.covu_recipients
            case "event_message_texts" => PropertyIdentifier_Enum.event_message_texts
            case "event_message_texts_config" => PropertyIdentifier_Enum.event_message_texts_config
            case "event_detection_enable" => PropertyIdentifier_Enum.event_detection_enable
            case "event_algorithm_inhibit" => PropertyIdentifier_Enum.event_algorithm_inhibit
            case "event_algorithm_inhibit_ref" => PropertyIdentifier_Enum.event_algorithm_inhibit_ref
            case "time_delay_normal" => PropertyIdentifier_Enum.time_delay_normal
            case "reliability_evaluation_inhibit" => PropertyIdentifier_Enum.reliability_evaluation_inhibit
            case "fault_parameters" => PropertyIdentifier_Enum.fault_parameters
            case "fault_type" => PropertyIdentifier_Enum.fault_type
            case "local_forwarding_only" => PropertyIdentifier_Enum.local_forwarding_only
            case "process_identifier_filter" => PropertyIdentifier_Enum.process_identifier_filter
            case "subscribed_recipients" => PropertyIdentifier_Enum.subscribed_recipients
            case "port_filter" => PropertyIdentifier_Enum.port_filter
            case "authorization_exemptions" => PropertyIdentifier_Enum.authorization_exemptions
            case "allow_group_delay_inhibit" => PropertyIdentifier_Enum.allow_group_delay_inhibit
            case "channel_number" => PropertyIdentifier_Enum.channel_number
            case "control_groups" => PropertyIdentifier_Enum.control_groups
            case "execution_delay" => PropertyIdentifier_Enum.execution_delay
            case "last_priority" => PropertyIdentifier_Enum.last_priority
            case "write_status" => PropertyIdentifier_Enum.write_status
            case "property_list" => PropertyIdentifier_Enum.property_list
            case "serial_number" => PropertyIdentifier_Enum.serial_number
            case "blink_warn_enable" => PropertyIdentifier_Enum.blink_warn_enable
            case "default_fade_time" => PropertyIdentifier_Enum.default_fade_time
            case "default_ramp_rate" => PropertyIdentifier_Enum.default_ramp_rate
            case "default_step_increment" => PropertyIdentifier_Enum.default_step_increment
            case "egress_time" => PropertyIdentifier_Enum.egress_time
            case "in_progress" => PropertyIdentifier_Enum.in_progress
            case "instantaneous_power" => PropertyIdentifier_Enum.instantaneous_power
            case "lighting_command" => PropertyIdentifier_Enum.lighting_command
            case "lighting_command_default_priority" => PropertyIdentifier_Enum.lighting_command_default_priority
            case "max_actual_value" => PropertyIdentifier_Enum.max_actual_value
            case "min_actual_value" => PropertyIdentifier_Enum.min_actual_value
            case "power" => PropertyIdentifier_Enum.power
            case "transition" => PropertyIdentifier_Enum.transition
            case "egress_active" => PropertyIdentifier_Enum.egress_active
            case "interface_value" => PropertyIdentifier_Enum.interface_value
            case "fault_high_limit" => PropertyIdentifier_Enum.fault_high_limit
            case "fault_low_limit" => PropertyIdentifier_Enum.fault_low_limit
            case "low_diff_limit" => PropertyIdentifier_Enum.low_diff_limit
            case "strike_count" => PropertyIdentifier_Enum.strike_count
            case "time_of_strike_count_reset" => PropertyIdentifier_Enum.time_of_strike_count_reset
            case "default_timeout" => PropertyIdentifier_Enum.default_timeout
            case "initial_timeout" => PropertyIdentifier_Enum.initial_timeout
            case "last_state_change" => PropertyIdentifier_Enum.last_state_change
            case "state_change_values" => PropertyIdentifier_Enum.state_change_values
            case "timer_running" => PropertyIdentifier_Enum.timer_running
            case "timer_state" => PropertyIdentifier_Enum.timer_state
            case "apdu_length" => PropertyIdentifier_Enum.apdu_length
            case "ip_address" => PropertyIdentifier_Enum.ip_address
            case "ip_default_gateway" => PropertyIdentifier_Enum.ip_default_gateway
            case "ip_dhcp_enable" => PropertyIdentifier_Enum.ip_dhcp_enable
            case "ip_dhcp_lease_time" => PropertyIdentifier_Enum.ip_dhcp_lease_time
            case "ip_dhcp_lease_time_remaining" => PropertyIdentifier_Enum.ip_dhcp_lease_time_remaining
            case "ip_dhcp_server" => PropertyIdentifier_Enum.ip_dhcp_server
            case "ip_dns_server" => PropertyIdentifier_Enum.ip_dns_server
            case "bacnet_ip_global_address" => PropertyIdentifier_Enum.bacnet_ip_global_address
            case "bacnet_ip_mode" => PropertyIdentifier_Enum.bacnet_ip_mode
            case "bacnet_ip_multicast_address" => PropertyIdentifier_Enum.bacnet_ip_multicast_address
            case "bacnet_ip_nat_traversal" => PropertyIdentifier_Enum.bacnet_ip_nat_traversal
            case "ip_subnet_mask" => PropertyIdentifier_Enum.ip_subnet_mask
            case "bacnet_ip_udp_port" => PropertyIdentifier_Enum.bacnet_ip_udp_port
            case "bbmd_accept_fd_registrations" => PropertyIdentifier_Enum.bbmd_accept_fd_registrations
            case "bbmd_broadcast_distribution_table" => PropertyIdentifier_Enum.bbmd_broadcast_distribution_table
            case "bbmd_foreign_device_table" => PropertyIdentifier_Enum.bbmd_foreign_device_table
            case "changes_pending" => PropertyIdentifier_Enum.changes_pending
            case "command" => PropertyIdentifier_Enum.command
            case "fd_bbmd_address" => PropertyIdentifier_Enum.fd_bbmd_address
            case "fd_subscription_lifetime" => PropertyIdentifier_Enum.fd_subscription_lifetime
            case "link_speed" => PropertyIdentifier_Enum.link_speed
            case "link_speeds" => PropertyIdentifier_Enum.link_speeds
            case "link_speed_autonegotiate" => PropertyIdentifier_Enum.link_speed_autonegotiate
            case "mac_address" => PropertyIdentifier_Enum.mac_address
            case "network_interface_name" => PropertyIdentifier_Enum.network_interface_name
            case "network_number" => PropertyIdentifier_Enum.network_number
            case "network_number_quality" => PropertyIdentifier_Enum.network_number_quality
            case "network_type" => PropertyIdentifier_Enum.network_type
            case "routing_table" => PropertyIdentifier_Enum.routing_table
            case "virtual_mac_address_table" => PropertyIdentifier_Enum.virtual_mac_address_table
            case "command_time_array" => PropertyIdentifier_Enum.command_time_array
            case "current_command_priority" => PropertyIdentifier_Enum.current_command_priority
            case "last_command_time" => PropertyIdentifier_Enum.last_command_time
            case "value_source" => PropertyIdentifier_Enum.value_source
            case "value_source_array" => PropertyIdentifier_Enum.value_source_array
            case "bacnet_ipv6_mode" => PropertyIdentifier_Enum.bacnet_ipv6_mode
            case "ipv6_address" => PropertyIdentifier_Enum.ipv6_address
            case "ipv6_prefix_length" => PropertyIdentifier_Enum.ipv6_prefix_length
            case "bacnet_ipv6_udp_port" => PropertyIdentifier_Enum.bacnet_ipv6_udp_port
            case "ipv6_default_gateway" => PropertyIdentifier_Enum.ipv6_default_gateway
            case "bacnet_ipv6_multicast_address" => PropertyIdentifier_Enum.bacnet_ipv6_multicast_address
            case "ipv6_dns_server" => PropertyIdentifier_Enum.ipv6_dns_server
            case "ipv6_auto_addressing_enable" => PropertyIdentifier_Enum.ipv6_auto_addressing_enable
            case "ipv6_dhcp_lease_time" => PropertyIdentifier_Enum.ipv6_dhcp_lease_time
            case "ipv6_dhcp_lease_time_remaining" => PropertyIdentifier_Enum.ipv6_dhcp_lease_time_remaining
            case "ipv6_dhcp_server" => PropertyIdentifier_Enum.ipv6_dhcp_server
            case "ipv6_zone_index" => PropertyIdentifier_Enum.ipv6_zone_index
            case "assigned_landing_calls" => PropertyIdentifier_Enum.assigned_landing_calls
            case "car_assigned_direction" => PropertyIdentifier_Enum.car_assigned_direction
            case "car_door_command" => PropertyIdentifier_Enum.car_door_command
            case "car_door_status" => PropertyIdentifier_Enum.car_door_status
            case "car_door_text" => PropertyIdentifier_Enum.car_door_text
            case "car_door_zone" => PropertyIdentifier_Enum.car_door_zone
            case "car_drive_status" => PropertyIdentifier_Enum.car_drive_status
            case "car_load" => PropertyIdentifier_Enum.car_load
            case "car_load_units" => PropertyIdentifier_Enum.car_load_units
            case "car_mode" => PropertyIdentifier_Enum.car_mode
            case "car_moving_direction" => PropertyIdentifier_Enum.car_moving_direction
            case "car_position" => PropertyIdentifier_Enum.car_position
            case "elevator_group" => PropertyIdentifier_Enum.elevator_group
            case "energy_meter" => PropertyIdentifier_Enum.energy_meter
            case "energy_meter_ref" => PropertyIdentifier_Enum.energy_meter_ref
            case "escalator_mode" => PropertyIdentifier_Enum.escalator_mode
            case "fault_signals" => PropertyIdentifier_Enum.fault_signals
            case "floor_text" => PropertyIdentifier_Enum.floor_text
            case "group_id" => PropertyIdentifier_Enum.group_id
            case "group_mode" => PropertyIdentifier_Enum.group_mode
            case "higher_deck" => PropertyIdentifier_Enum.higher_deck
            case "installation_id" => PropertyIdentifier_Enum.installation_id
            case "landing_calls" => PropertyIdentifier_Enum.landing_calls
            case "landing_call_control" => PropertyIdentifier_Enum.landing_call_control
            case "landing_door_status" => PropertyIdentifier_Enum.landing_door_status
            case "lower_deck" => PropertyIdentifier_Enum.lower_deck
            case "machine_room_id" => PropertyIdentifier_Enum.machine_room_id
            case "making_car_call" => PropertyIdentifier_Enum.making_car_call
            case "next_stopping_floor" => PropertyIdentifier_Enum.next_stopping_floor
            case "operation_direction" => PropertyIdentifier_Enum.operation_direction
            case "passenger_alarm" => PropertyIdentifier_Enum.passenger_alarm
            case "power_mode" => PropertyIdentifier_Enum.power_mode
            case "registered_car_call" => PropertyIdentifier_Enum.registered_car_call
            case "active_cov_multiple_subscriptions" => PropertyIdentifier_Enum.active_cov_multiple_subscriptions
            case "protocol_level" => PropertyIdentifier_Enum.protocol_level
            case "reference_port" => PropertyIdentifier_Enum.reference_port
            case "deployed_profile_location" => PropertyIdentifier_Enum.deployed_profile_location
            case "profile_location" => PropertyIdentifier_Enum.profile_location
            case "tags" => PropertyIdentifier_Enum.tags
            case "subordinate_node_types" => PropertyIdentifier_Enum.subordinate_node_types
            case "subordinate_tags" => PropertyIdentifier_Enum.subordinate_tags
            case "subordinate_relationships" => PropertyIdentifier_Enum.subordinate_relationships
            case "default_subordinate_relationship" => PropertyIdentifier_Enum.default_subordinate_relationship
            case "represents" => PropertyIdentifier_Enum.represents
            case "default_present_value" => PropertyIdentifier_Enum.default_present_value
            case "present_stage" => PropertyIdentifier_Enum.present_stage
            case "stages" => PropertyIdentifier_Enum.stages
            case "stage_names" => PropertyIdentifier_Enum.stage_names
            case "target_references" => PropertyIdentifier_Enum.target_references
            case "audit_source_reporter" => PropertyIdentifier_Enum.audit_source_reporter
            case "audit_level" => PropertyIdentifier_Enum.audit_level
            case "audit_notification_recipient" => PropertyIdentifier_Enum.audit_notification_recipient
            case "auditable_priority_filter" => PropertyIdentifier_Enum.auditable_priority_filter
            case "auditable_operations" => PropertyIdentifier_Enum.auditable_operations
            case "delete_on_forward" => PropertyIdentifier_Enum.delete_on_forward
            case "maximum_send_delay" => PropertyIdentifier_Enum.maximum_send_delay
            case "monitored_objects" => PropertyIdentifier_Enum.monitored_objects
            case "send_now" => PropertyIdentifier_Enum.send_now
            case "floor_number" => PropertyIdentifier_Enum.floor_number
            case "device_uuid" => PropertyIdentifier_Enum.device_uuid
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => PropertyIdentifier_Enum.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _n where _n.startsWith("non_standardized_") =>
                let _numStr = _n.removePrefix("non_standardized_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => PropertyIdentifier_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_934
--21.6 Base Types

BACnetPropertyIdentifier ::= ENUMERATED {  -- see below for numerical order
 absentee-limit  (244),
 accepted-modes  (175),
 access-alarm-events  (245),
 access-doors  (246),
 access-event  (247),
 access-event-authentication-factor  (248),
 access-event-credential  (249),
 access-event-tag  (322),
 access-event-time  (250),
 access-transaction-events  (251),
 accompaniment  (252),
 accompaniment-time  (253),
 ack-required  (1),
 acked-transitions  (0),
 action  (2),
 action-text  (3),
 activation-time  (254),
 active-authentication-policy  (255),
 active-cov-multiple-subscriptions  (481),
 active-cov-subscriptions  (152),
 active-text  (4),
 active-vt-sessions  (5),
 actual-shed-level  (212),
 adjust-value  (176),
 alarm-value  (6),
 alarm-values  (7),
 align-intervals  (193),
 all  (8),
 all-writes-successful  (9),
 allow-group-delay-inhibit  (365),
 apdu-length  (399),
 apdu-segment-timeout  (10),
 apdu-timeout  (11),
 application-software-version  (12),
 archive  (13),
 assigned-access-rights  (256),
 assigned-landing-calls  (447),
 attempted-samples  (124),
 audit-source-reporter  (497),
 audit-level  (498),
 audit-notification-recipient  (499),
 auditable-priority-filter  (500),
 auditable-operations  (501),
 authentication-factors  (257),
 authentication-policy-list  (258),
 authentication-policy-names  (259),
 authentication-status  (260),
 authorization-exemptions  (364),
 authorization-mode  (261),
 auto-slave-discovery  (169),
 average-value  (125),
 backup-and-restore-state  (338),
 backup-failure-timeout  (153),
 backup-preparation-time   (339),
 bacnet-ip-global-address  (407),
 bacnet-ip-mode  (408),
 bacnet-ip-multicast-address  (409),
 bacnet-ip-nat-traversal  (410),
 bacnet-ip-udp-port  (412),
 bacnet-ipv6-mode  (435),
 bacnet-ipv6-udp-port  (438),
 bacnet-ipv6-multicast-address  (440),
 bbmd-accept-fd-registrations  (413),
 bbmd-broadcast-distribution-table  (414),
 bbmd-foreign-device-table  (415),
 belongs-to  (262),
 bias  (14),
 bit-mask  (342),
 bit-text  (343),
 blink-warn-enable  (373),
 buffer-size  (126),
 car-assigned-direction  (448),
 car-door-command  (449),
 car-door-status  (450),
 car-door-text  (451),
 car-door-zone  (452),
 car-drive-status  (453),
 car-load  (454),
 car-load-units  (455),
 car-mode  (456),
 car-moving-direction  (457),
 car-position  (458),
 change-of-state-count  (15),
 change-of-state-time  (16),
 changes-pending  (416),
 channel-number  (366),
 client-cov-increment  (127),
 command  (417),
 command-time-array  (430),
 configuration-files  (154),
 control-groups  (367),
 controlled-variable-reference  (19),
 controlled-variable-units  (20),
 controlled-variable-value  (21),
 count  (177),
 count-before-change  (178),
 count-change-time  (179),
 cov-increment  (22),
 cov-period  (180),
 cov-resubscription-interval  (128),
 covu-period  (349),
 covu-recipients  (350),
 credential-disable  (263),
 credential-status  (264),
 credentials  (265),
 credentials-in-zone  (266),
 current-command-priority  (431),
 database-revision  (155),
 date-list  (23),
 daylight-savings-status  (24),
 days-remaining  (267),
 deadband  (25),
 default-fade-time  (374),
 default-present-value  (492),
 default-ramp-rate  (375),
 default-step-increment  (376),
 default-subordinate-relationship  (490),
 default-timeout  (393),
 delete-on-forward  (502),
 deployed-profile-location  (484),
 derivative-constant  (26),
 derivative-constant-units  (27),
 description      (28),
 description-of-halt  (29),
 device-address-binding  (30),
 device-type  (31),
 device-uuid  (507),
 direct-reading  (156),
 door-alarm-state  (226),
 door-extended-pulse-time  (227),
 door-members  (228),
 door-open-too-long-time  (229),
 door-pulse-time  (230),
 door-status  (231),
 door-unlock-delay-time  (232),
 duty-window  (213),
 effective-period  (32),
 egress-active  (386),
 egress-time  (377),
 elapsed-active-time  (33),
 elevator-group  (459),
 enable  (133), -- renamed from previous version
 energy-meter  (460),
 energy-meter-ref  (461),
 entry-points  (268),
 error-limit  (34),
 escalator-mode  (462),
 event-algorithm-inhibit  (354),
 event-algorithm-inhibit-ref  (355),
 event-detection-enable  (353),
 event-enable  (35),
 event-message-texts  (351),
 event-message-texts-config  (352),
 event-parameters  (83),
 event-state  (36),
 event-time-stamps  (130),
 event-type  (37),
 exception-schedule  (38),
 execution-delay  (368),
 exit-points  (269),
 expected-shed-level  (214),
 expiration-time  (270),
 extended-time-enable  (271),
 failed-attempt-events  (272),
 failed-attempts  (273),
 failed-attempts-time  (274),
 fault-high-limit  (388),
 fault-low-limit  (389),
 fault-parameters  (358),
 fault-signals  (463),
 fault-type  (359),
 fault-values  (39),
 fd-bbmd-address  (418),
 fd-subscription-lifetime  (419),
 feedback-value  (40),
 file-access-method  (41),
 file-size  (42),
 file-type  (43),
 firmware-revision  (44),
 floor-number  (506),
 floor-text  (464),
 full-duty-baseline  (215),
 global-identifier  (323),
 group-id  (465),
 group-member-names  (346),
 group-members  (345),
 group-mode  (467),
 high-limit  (45),
 higher-deck  (468),
 in-process  (47),
 in-progress  (378),
 inactive-text  (46),
 initial-timeout  (394),
 input-reference  (181),
 installation-id  (469),
 instance-of  (48),
 instantaneous-power  (379),
 integral-constant  (49),
 integral-constant-units  (50),
 interface-value   (387),
 interval-offset  (195),
 ip-address  (400),
 ip-default-gateway  (401),
 ip-dhcp-enable  (402),
 ip-dhcp-lease-time  (403),
 ip-dhcp-lease-time-remaining  (404),
 ip-dhcp-server  (405),
 ip-dns-server  (406),
 ip-subnet-mask  (411),
 ipv6-address  (436),
 ipv6-auto-addressing-enable  (442),
 ipv6-default-gateway  (439),
 ipv6-dhcp-lease-time  (443),
 ipv6-dhcp-lease-time-remaining  (444),
 ipv6-dhcp-server  (445),
 ipv6-dns-server  (441),
 ipv6-prefix-length  (437),
 ipv6-zone-index  (446),
 issue-confirmed-notifications  (51),
 is-utc  (344),
 landing-call-control  (471),
 landing-calls  (470),
 landing-door-status  (472),
 last-access-event  (275),
 last-access-point  (276),
 last-command-time  (432),
 last-credential-added  (277),
 last-credential-added-time  (278),
 last-credential-removed  (279),
 last-credential-removed-time  (280),
 last-notify-record  (173),
 last-priority  (369),
 last-restart-reason  (196),
 last-restore-time  (157),
 last-state-change  (395),
 last-use-time  (281),
 life-safety-alarm-values  (166),
 lighting-command  (380),
 lighting-command-default-priority  (381),
 limit-enable  (52),
 limit-monitoring-interval  (182),
 link-speed  (420),
 link-speed-autonegotiate  (422),
 link-speeds  (421),
 list-of-group-members  (53),
 list-of-object-property-references  (54),
 local-date  (56),
 local-forwarding-only  (360),
 local-time  (57),
 location  (58),
 lock-status  (233),
 lockout  (282),
 lockout-relinquish-time  (283),
 log-buffer  (131),
 log-device-object-property  (132),
 log-interval  (134),
 logging-object  (183),
 logging-record  (184),
 logging-type  (197),
 low-diff-limit  (390),
 low-limit  (59),
 lower-deck  (473),
 mac-address  (423),
 machine-room-id  (474),
 maintenance-required  (158),
 making-car-call  (475),
 manipulated-variable-reference  (60),
 manual-slave-address-binding  (170),
 masked-alarm-values  (234),
 max-actual-value  (382),
 max-apdu-length-accepted  (62),
 max-failed-attempts  (285),
 max-info-frames  (63),
 max-master  (64),
 max-pres-value  (65),
 max-segments-accepted  (167),
 maximum-output  (61),
 maximum-send-delay  (503),
 maximum-value  (135),
 maximum-value-timestamp  (149),
 member-of  (159),
 member-status-flags  (347),
 members  (286),
 min-actual-value  (383),
 min-pres-value  (69),
 minimum-off-time  (66),
 minimum-on-time  (67),
 minimum-output  (68),
 minimum-value  (136),
 minimum-value-timestamp  (150),
 mode  (160),
 model-name  (70),
 modification-date  (71),
 monitored-objects  (504),
 muster-point  (287),
 negative-access-rules  (288),
 network-interface-name  (424),
 network-number  (425),
 network-number-quality  (426),
 network-type  (427),
 next-stopping-floor  (476),
 node-subtype  (207),
 node-type  (208),
 notification-class  (17),  -- renamed from previous version
 notification-threshold  (137),
 notify-type  (72),
 number-of-apdu-retries  (73),
 number-of-authentication-policies  (289),
 number-of-states  (74),
 object-identifier  (75),
 object-list  (76),
 object-name  (77),
 object-property-reference  (78),
 object-type  (79),
 occupancy-count  (290),
 occupancy-count-adjust  (291),
 occupancy-count-enable  (292),
 occupancy-lower-limit  (294),
 occupancy-lower-limit-enforced  (295),
 occupancy-state  (296),
 occupancy-upper-limit  (297),
 occupancy-upper-limit-enforced  (298),
 operation-direction  (477),
 operation-expected  (161),
 optional  (80),
 out-of-service  (81),
 output-units  (82),
 passback-mode  (300),
 passback-timeout  (301),
 passenger-alarm  (478),
 polarity  (84),
 port-filter  (363),
 positive-access-rules  (302),
 power  (384),
 power-mode  (479),
 prescale  (185),
 present-stage  (493),
 present-value  (85),
 priority  (86),
 priority-array  (87),
 priority-for-writing  (88),
 process-identifier  (89),
 process-identifier-filter  (361),
 profile-location  (485),
 profile-name  (168),
 program-change  (90),
 program-location  (91),
 program-state  (92),
 property-list  (371),
 proportional-constant  (93),
 proportional-constant-units  (94),
 protocol-level  (482),
 protocol-object-types-supported  (96),
 protocol-revision  (139),
 protocol-services-supported  (97),
 protocol-version  (98),
 pulse-rate  (186),
 read-only  (99),
 reason-for-disable  (303),
 reason-for-halt  (100),
 recipient-list  (102),
 record-count  (141),
 records-since-notification  (140),
 reference-port  (483),
 registered-car-call  (480),
 reliability  (103),
 reliability-evaluation-inhibit  (357),
 relinquish-default  (104),
 represents  (491),
 requested-shed-level  (218),
 requested-update-interval  (348),
 required  (105),
 resolution  (106),
 restart-notification-recipients  (202),
 restore-completion-time  (340),
 restore-preparation-time  (341),
 routing-table  (428),
 scale  (187),
 scale-factor  (188),
 schedule-default  (174),
 secured-status  (235),
 segmentation-supported  (107),
 send-now  (505),
 serial-number   (372),
 setpoint  (108),
 setpoint-reference  (109),
 setting  (162),
 shed-duration  (219),
 shed-level-descriptions  (220),
 shed-levels  (221),
 silenced  (163),
 slave-address-binding  (171),
 slave-proxy-enable  (172),
 stages  (494),
 stage-names  (495),
 start-time  (142),
 state-change-values  (396),
 state-description  (222),
 state-text  (110),
 status-flags  (111),
 stop-time  (143),
 stop-when-full  (144),
 strike-count  (391),
 structured-object-list  (209),
 subordinate-annotations  (210),
 subordinate-list  (211),
 subordinate-node-types  (487),
 subordinate-relationships  (489),
 subordinate-tags  (488),
 subscribed-recipients  (362),
 supported-format-classes  (305),
 supported-formats  (304),
 system-status  (112),
 tags  (486),
 target-references  (496),
 threat-authority  (306),
 threat-level  (307),
 time-delay  (113),
 time-delay-normal  (356),
 time-of-active-time-reset  (114),
 time-of-device-restart  (203),
 time-of-state-count-reset  (115),
 time-of-strike-count-reset  (392),
 time-synchronization-interval  (204),
 time-synchronization-recipients  (116),
 timer-running  (397),
 timer-state  (398),
 total-record-count  (145),
 trace-flag  (308),
 tracking-value  (164),
 transaction-notification-class  (309),
 transition  (385),
 trigger  (205),
 units  (117),
 update-interval  (118),
 update-time  (189),
 user-external-identifier  (310),
 user-information-reference  (311),
 user-name  (317),
 user-type  (318),
 uses-remaining  (319),
 utc-offset  (119),
 utc-time-synchronization-recipients  (206),
 valid-samples  (146),
 value-before-change  (190),
 value-change-time  (192),
 value-set  (191),
 value-source  (433),
 value-source-array  (434),
 variance-value  (151),
 vendor-identifier  (120),
 vendor-name  (121),
 verification-time  (326),
 virtual-mac-address-table  (429),
 vt-classes-supported  (122),
 weekly-schedule  (123),
 window-interval  (147),
 window-samples  (148),
 write-status  (370),
 zone-from  (320),
 zone-members  (165),
 zone-to  (321), -- -numerical order reference
 -- see acked-transitions  (0),
 -- see ack-required  (1),
 -- see action  (2),
 -- see action-text  (3),
 -- see active-text  (4),
 -- see active-vt-sessions  (5),
 -- see alarm-value  (6),
 -- see alarm-values  (7),
 -- see all  (8),
 -- see all-writes-successful  (9),
 -- see apdu-segment-timeout  (10),
 -- see apdu-timeout  (11),
 -- see application-software-version  (12),
 -- see archive  (13),
 -- see bias  (14),
 -- see change-of-state-count  (15),
 -- see change-of-state-time  (16),
 -- see notification-class  (17),
 -- this property  deleted   (18),
 -- see controlled-variable-reference  (19),
 -- see controlled-variable-units  (20),
 -- see controlled-variable-value  (21),
 -- see cov-increment  (22),
 -- see date-list  (23),
 -- see daylight-savings-status  (24),
 -- see deadband  (25),
 -- see derivative-constant  (26),
 -- see derivative-constant-units  (27),
 -- see description      (28),
 -- see description-of-halt  (29),
 -- see device-address-binding  (30),
 -- see device-type  (31),
 -- see effective-period  (32),
 -- see elapsed-active-time  (33),
 -- see error-limit  (34),
 -- see event-enable  (35),
 -- see event-state  (36),
 -- see event-type  (37),
 -- see exception-schedule  (38),
 -- see fault-values  (39),
 -- see feedback-value  (40),
 -- see file-access-method  (41),
 -- see file-size  (42),
 -- see file-type  (43),
 -- see firmware-revision  (44),
 -- see high-limit  (45),
 -- see inactive-text  (46),
 -- see in-process  (47),
 -- see instance-of  (48),
 -- see integral-constant  (49),
 -- see integral-constant-units  (50),
 -- see issue-confirmed-notifications  (51), removed in version 1 revision 4, added back in version 1
revision 20
 -- see limit-enable  (52),
 -- see list-of-group-members  (53),
 -- see list-of-object-property-references (54),
 -- formerly: list-of-session-keys  (55), removed in version 1 revision 11
 -- see local-date  (56),
 -- see local-time  (57),
 -- see location  (58),
 -- see low-limit  (59),
 -- see manipulated-variable-reference (60),
 -- see maximum-output  (61),
 -- see max-apdu-length-accepted  (62),
 -- see max-info-frames  (63),
 -- see max-master  (64),
 -- see max-pres-value  (65),
 -- see minimum-off-time  (66),
 -- see minimum-on-time  (67),
 -- see minimum-output  (68),
 -- see min-pres-value  (69),
 -- see model-name  (70),
 -- see modification-date  (71),
 -- see notify-type  (72),
 -- see number-of-apdu-retries  (73),
 -- see number-of-states  (74),
 -- see object identifier  (75),
 -- see object-list  (76),
 -- see object-name  (77),
 -- see object-property-reference  (78),
 -- see object-type  (79),
 -- see optional  (80),
 -- see out-of-service  (81),
 -- see output-units  (82),
 -- see event-parameters  (83),
 -- see polarity  (84),
 -- see present value  (85),
 -- see priority  (86),
 -- see priority-array  (87),
 -- see priority-for-writing  (88),
 -- see process-identifier  (89),
 -- see program-change  (90),
 -- see program-location  (91),
 -- see program-state  (92),
 -- see proportional-constant  (93),
 -- see proportional-constant-units  (94),
 -- formerly: protocol-conformance-class (95), removed in version 1 revision 2
 -- see protocol-object-types-supported (96),
 -- see protocol-services-supported  (97),
 -- see protocol-version  (98),
 -- see read-only  (99),
 -- see reason-for-halt  (100),
 -- formerly: recipient  (101), removed in version 1 revision 4
 -- see recipient-list  (102),
 -- see reliability  (103),
 -- see relinquish-default  (104),
 -- see required  (105),
 -- see resolution  (106),
 -- see segmentation-supported  (107),
 -- see setpoint  (108),
 -- see setpoint-reference  (109),
 -- see state-text  (110),
 -- see status-flags  (111),
 -- see system-status  (112),
 -- see time-delay  (113),
 -- see time-of-active-time-reset  (114),
 -- see time-of-state-count-reset  (115),
 -- see time-synchronization-recipients (116),
 -- see units  (117),
 -- see update-interval  (118),
 -- see utc-offset  (119),
 -- see vendor-identifier  (120),
 -- see vendor-name  (121),
 -- see vt-classes-supported  (122),
 -- see weekly-schedule  (123),
 -- see attempted-samples  (124),
 -- see average-value  (125),
 -- see buffer-size  (126),
 -- see client-cov-increment  (127),
 -- see cov-resubscription-interval  (128),
 -- formerly: current-notify-time  (129), removed in version 1 revision 3
 -- see event-time-stamps  (130),
 -- see log-buffer  (131),
 -- see log-device-object-property  (132),
 -- see enable  (133), log-enable was renamed to enable in version 1 revision 5
 -- see log-interval  (134),
 -- see maximum-value  (135),
 -- see minimum-value  (136),
 -- see notification-threshold  (137),
 -- formerly: previous-notify-time  (138), removed in version 1 revision 3
 -- see protocol-revision  (139),
 -- see records-since-notification  (140),
 -- see record-count  (141),
 -- see start-time  (142),
 -- see stop-time  (143),
 -- see stop-when-full  (144),
 -- see total-record-count  (145),
 -- see valid-samples  (146),
 -- see window-interval  (147),
 -- see window-samples  (148),
 -- see maximum-value-timestamp  (149),
 -- see minimum-value-timestamp  (150),
 -- see variance-value  (151),
 -- see active-cov-subscriptions  (152),
 -- see backup-failure-timeout  (153),
 -- see configuration-files  (154),
 -- see database-revision  (155),
 -- see direct-reading   (156),
 -- see last-restore-time,  (157),
 -- see maintenance-required  (158),
 -- see member-of  (159),
 -- see mode  (160),
 -- see operation-expected   (161),
 -- see setting  (162),
 -- see silenced  (163),
 -- see tracking-value  (164),
 -- see zone-members  (165),
 -- see life-safety-alarm-values  (166),
 -- see max-segments-accepted  (167),
 -- see profile-name  (168),
 -- see auto-slave-discovery  (169),
 -- see manual-slave-address-binding  (170),
 -- see slave-address-binding  (171),
 -- see slave-proxy-enable  (172),
 -- see last-notify-record  (173),
 -- see schedule-default  (174),
 -- see accepted-modes  (175),
 -- see adjust-value  (176),
 -- see count  (177),
 -- see count-before-change  (178),
 -- see count-change-time  (179),
 -- see cov-period  (180),
 -- see input-reference  (181),
 -- see limit-monitoring-interval  (182),
 -- see logging-object  (183),
 -- see logging-record  (184),
 -- see prescale  (185),
 -- see pulse-rate  (186),
 -- see scale  (187),
 -- see scale-factor  (188),
 -- see update-time  (189),
 -- see value-before-change  (190),
 -- see value-set  (191),
 -- see value-change-time  (192),
 -- see align-intervals  (193),
 -- enumeration value 194 is unassigned
 -- see interval-offset  (195),
 -- see last-restart-reason  (196),
 -- see logging-type  (197),
 -- enumeration values 198-201 are unassigned
 -- see restart-notification-recipients  (202),
 -- see time-of-device-restart  (203),
 -- see time-synchronization-interval  (204),
 -- see trigger  (205),
 -- see utc-time-synchronization-recipients (206),
 -- see node-subtype  (207),
 -- see node-type  (208),
 -- see structured-object-list  (209),
 -- see subordinate-annotations  (210),
 -- see subordinate-list  (211),
 -- see actual-shed-level  (212),
 -- see duty-window  (213),
 -- see expected-shed-level  (214),
 -- see full-duty-baseline  (215),
 -- enumeration values 216-217 are unassigned
 -- see requested-shed-level  (218),
 -- see shed-duration  (219),
 -- see shed-level-descriptions  (220),
 -- see shed-levels  (221),
 -- see state-description  (222),
 -- enumeration values 223-225 are unassigned
 -- see door-alarm-state  (226),
 -- see door-extended-pulse-time  (227),
 -- see door-members  (228),
 -- see door-open-too-long-time  (229),
 -- see door-pulse-time  (230),
 -- see door-status  (231),
 -- see door-unlock-delay-time  (232),
 -- see lock-status  (233),
 -- see masked-alarm-values  (234),
 -- see secured-status  (235),
 -- enumeration values 236-243 are unassigned
 -- see absentee-limit  (244),
 -- see access-alarm-events  (245),
 -- see access-doors   (246),
 -- see access-event  (247),
 -- see access-event-authentication-factor (248),
 -- see access-event-credential  (249),
 -- see access-event-time  (250),
 -- see access-transaction-events  (251),
 -- see accompaniment  (252),
 -- see accompaniment-time  (253),
 -- see activation-time  (254),
 -- see active-authentication-policy   (255),
 -- see assigned-access-rights  (256),
 -- see authentication-factors  (257),
 -- see authentication-policy-list  (258),
 -- see authentication-policy-names  (259),
 -- see authentication-status  (260),
 -- see authorization-mode   (261),
 -- see belongs-to  (262),
 -- see credential-disable  (263),
 -- see credential-status  (264),
 -- see credentials  (265),
 -- see credentials-in-zone  (266),
 -- see days-remaining  (267),
 -- see entry-points  (268),
 -- see exit-points  (269),
 -- see expiration-time  (270),
 -- see extended-time-enable  (271),
 -- see failed-attempt-events  (272),
 -- see failed-attempts   (273),
 -- see failed-attempts-time   (274),
 -- see last-access-event   (275),
 -- see last-access-point  (276),
 -- see last-credential-added  (277),
 -- see last-credential-added-time  (278),
 -- see last-credential-removed  (279),
 -- see last-credential-removed-time  (280),
 -- see last-use-time  (281),
 -- see lockout   (282),
 -- see lockout-relinquish-time   (283),
 -- formerly: master-exemption  (284), removed in version 1 revision 13
 -- see max-failed-attempts   (285),
 -- see members  (286),
 -- see muster-point   (287),
 -- see negative-access-rules  (288),
 -- see number-of-authentication-policies (289),
 -- see occupancy-count  (290),
 -- see occupancy-count-adjust  (291),
 -- see occupancy-count-enable  (292),
 -- formerly: occupancy-exemption  (293), removed in version 1 revision 13
 -- see occupancy-lower-limit  (294),
 -- see occupancy-lower-limit-enforced (295),
 -- see occupancy-state  (296),
 -- see occupancy-upper-limit  (297),
 -- see occupancy-upper-limit-enforced (298),
 -- formerly: passback-exemption  (299), removed in version 1 revision 13
 -- see passback-mode  (300),
 -- see passback-timeout  (301),
 -- see positive-access-rules  (302),
 -- see reason-for-disable  (303),
 -- see supported-formats  (304),
 -- see supported-format-classes  (305),
 -- see threat-authority  (306),
 -- see threat-level   (307),
 -- see trace-flag  (308),
 -- see transaction-notification-class   (309),
 -- see user-external-identifier  (310),
 -- see user-information-reference  (311),
 -- enumeration values 312-316 are unassigned
 -- see user-name  (317),
 -- see user-type  (318),
 -- see uses-remaining  (319),
 -- see zone-from   (320),
 -- see zone-to   (321),
 -- see access-event-tag  (322),
 -- see global-identifier  (323),
 -- enumeration values 324-325 are unassigned
 -- see verification-time  (326),
 -- enumeration values 327-337 are removed
 -- see backup-and-restore-state   (338),
 -- see backup-preparation-time   (339),
 -- see restore-completion-time  (340),
 -- see restore-preparation-time   (341),
 -- see bit-mask  (342),
 -- see bit-text  (343),
 -- see is-utc  (344),
 -- see group-members  (345),
 -- see group-member-names  (346),
 -- see member-status-flags  (347),
 -- see requested-update-interval  (348),
 -- see covu-period  (349),
 -- see covu-recipients  (350),
 -- see event-message-texts  (351),
 -- see event-message-texts-config  (352),
 -- see event-detection-enable  (353),
 -- see event-algorithm-inhibit  (354),
 -- see event-algorithm-inhibit-ref  (355),
 -- see time-delay-normal  (356),
 -- see reliability-evaluation-inhibit  (357),
 -- see fault-parameters  (358),
 -- see fault-type  (359),
 -- see local-forwarding-only  (360),
 -- see process-identifier-filter  (361),
 -- see subscribed-recipients  (362),
 -- see port-filter  (363),
 -- see authorization-exemptions  (364),
 -- see allow-group-delay-inhibit  (365),
 -- see channel-number  (366),
 -- see control-groups  (367),
 -- see execution-delay  (368),
 -- see last-priority  (369),
 -- see write-status  (370),
 -- see property-list  (371),
 -- see serial-number   (372),
 -- see blink-warn-enable  (373),
 -- see default-fade-time  (374),
 -- see default-ramp-rate  (375),
 -- see default-step-increment  (376),
 -- see egress-time  (377),
 -- see in-progress  (378),
 -- see instantaneous-power  (379),
 -- see lighting-command  (380),
 -- see lighting-command-default-priority (381),
 -- see max-actual-value  (382),
 -- see min-actual-value  (383),
 -- see power  (384),
 -- see transition  (385),
 -- see egress-active  (386),
 -- see interface-value   (387),
 -- see fault-high-limit  (388),
 -- see fault-low-limit  (389),
 -- see low-diff-limit  (390),
 -- see strike-count  (391),
 -- see time-of-strike-count-reset  (392),
 -- see default-timeout  (393),
 -- see initial-timeout  (394),
 -- see last-state-change  (395),
 -- see state-change-values  (396),
 -- see timer-running  (397),
 -- see timer-state  (398),
 -- see apdu-length  (399),
 -- see ip-address  (400),
 -- see ip-default-gateway  (401),
 -- see ip-dhcp-enable  (402),
 -- see ip-dhcp-lease-time  (403),
 -- see ip-dhcp-lease-time-remaining  (404),
 -- see ip-dhcp-server  (405),
 -- see ip-dns-server  (406),
 -- see bacnet-ip-global-address  (407),
 -- see bacnet-ip-mode  (408),
 -- see bacnet-ip-multicast-address  (409),
 -- see bacnet-ip-nat-traversal  (410),
 -- see ip-subnet-mask  (411),
 -- see bacnet-ip-udp-port  (412),
 -- see bbmd-accept-fd-registrations  (413),
 -- see bbmd-broadcast-distribution-table (414),
 -- see bbmd-foreign-device-table  (415),
 -- see changes-pending  (416),
 -- see command  (417),
 -- see fd-bbmd-address  (418),
 -- see fd-subscription-lifetime  (419),
 -- see link-speed  (420),
 -- see link-speeds  (421),
 -- see link-speed-autonegotiate  (422),
 -- see mac-address  (423),
 -- see network-interface-name  (424),
 -- see network-number  (425),
 -- see network-number-quality  (426),
 -- see network-type  (427),
 -- see routing-table  (428),
 -- see virtual-mac-address-table  (429),
 -- see command-time-array  (430),
 -- see current-command-priority  (431),
 -- see last-command-time  (432),
 -- see value-source  (433),
  -- see value-source-array  (434),
 -- see bacnet-ipv6-mode  (435),
 -- see ipv6-address  (436),
 -- see ipv6-prefix-length  (437),
 -- see bacnet-ipv6-udp-port  (438),
 -- see ipv6-default-gateway  (439),
 -- see bacnet-ipv6-multicast-address  (440),
 -- see ipv6-dns-server  (441),
 -- see ipv6-auto-addressing-enable  (442),
 -- see ipv6-dhcp-lease-time  (443),
 -- see ipv6-dhcp-lease-time-remaining (444),
 -- see ipv6-dhcp-server  (445),
 -- see ipv6-zone-index  (446),
 -- see assigned-landing-calls  (447),
 -- see car-assigned-direction  (448),
 -- see car-door-command  (449),
 -- see car-door-status  (450),
 -- see car-door-text  (451),
 -- see car-door-zone  (452),
 -- see car-drive-status  (453),
 -- see car-load  (454),
 -- see car-load-units  (455),
 -- see car-mode  (456),
 -- see car-moving-direction  (457),
 -- see car-position  (458),
 -- see elevator-group  (459),
 -- see energy-meter  (460),
 -- see energy-meter-ref  (461),
 -- see escalator-mode  (462),
 -- see fault-signals  (463),
 -- see floor-text  (464),
 -- see group-id  (465),
 -- enumeration value 466 is unassigned
 -- see group-mode  (467),
 -- see higher-deck  (468),
 -- see installation-id  (469),
 -- see landing-calls  (470),
 -- see landing-call-control  (471),
 -- see landing-door-status  (472),
 -- see lower-deck  (473),
 -- see machine-room-id  (474),
 -- see making-car-call  (475),
 -- see next-stopping-floor  (476),
 -- see operation-direction  (477),
 -- see passenger-alarm  (478),
 -- see power-mode  (479),
 -- see registered-car-call  (480),
 -- see active-cov-multiple-subscriptions (481),
 -- see protocol-level  (482),
 -- see reference-port  (483),
 -- see deployed-profile-location  (484),
 -- see profile-location  (485),
 -- see tags  (486),
 -- see subordinate-node-types  (487),
 -- see subordinate-tags  (488),
 -- see subordinate-relationships  (489),
 -- see default-subordinate-relationship (490),
 -- see represents  (491),
 -- see default-present-value  (492),
 -- see present-stage  (493),
 -- see stages  (494),
 -- see stage-names  (495),
 -- see target-references  (496),
 -- see audit-source-level  (497),
 -- see audit-level  (498),
 -- see audit-notification-recipient  (499),
 -- see audit-priority-filter  (500),
 -- see auditable-operations  (501),
 -- see delete-on-forward  (502),
 -- see maximum-send-delay  (503),
 -- see monitored-objects  (504),
 -- see send-now  (505),
 -- see floor-number  (506),
 -- see device-uuid  (507),
 ...
 }
 -- The special property identifiers all, optional, and required are reserved for use in the
 -- ReadPropertyMultiple service or services not defined in this standard.
 --
 -- Enumerated values 0-511 and enumerated values 4194304 and up are reserved for definition by ASHRAE.
 -- Enumerated values 512-4194303 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
 --ISO_16484_5_2022_Page_950
*/
