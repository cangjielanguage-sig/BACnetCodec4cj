public package BACnetCodec4cj.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetException.*
import std.convert.*

//BACnet协议2022版定义原文
/*
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
 zone-to  (321), 
 -- -numerical order reference 
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
 -- see issue-confirmed-notifications  (51), removed in version 1 revision 4, added back in version 1 revision 20 
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
*/

// 枚举定义（按数值顺序）
public enum BACnetPropertyIdentifier <: IFromUInt32<BACnetPropertyIdentifier> & IToUInt32 & ToString & IFromString<BACnetPropertyIdentifier> {
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
    | protocol_object_types_supported // (96)
    | protocol_services_supported // (97)
    | protocol_version // (98)
    | read_only // (99)
    | reason_for_halt // (100)
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
    | event_time_stamps // (130)
    | log_buffer // (131)
    | log_device_object_property // (132)
    | enable // (133)
    | log_interval // (134)
    | maximum_value // (135)
    | minimum_value // (136)
    | notification_threshold // (137)
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
    | max_failed_attempts // (285)
    | members // (286)
    | muster_point // (287)
    | negative_access_rules // (288)
    | number_of_authentication_policies // (289)
    | occupancy_count // (290)
    | occupancy_count_adjust // (291)
    | occupancy_count_enable // (292)
    | occupancy_lower_limit // (294)
    | occupancy_lower_limit_enforced // (295)
    | occupancy_state // (296)
    | occupancy_upper_limit // (297)
    | occupancy_upper_limit_enforced // (298)
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
    | audit_source_level // (497)
    | audit_level // (498)
    | audit_notification_recipient // (499)
    | audit_priority_filter // (500)
    | auditable_operations // (501)
    | delete_on_forward // (502)
    | maximum_send_delay // (503)
    | monitored_objects // (504)
    | send_now // (505)
    | floor_number // (506)
    | device_uuid // (507)
    | reserved(UInt32) // 标准保留值（未分配或已删除）
    | non_standardized(UInt32) // 512-4194303 扩展值（Clause 23，非 ASHRAE 定义）

    // ==================== 正向转换函数 (UInt32 → 枚举) ====================
    public static func fromUInt32(arg_tag: UInt32): BACnetPropertyIdentifier {
        match (arg_tag) {
            case 0 => BACnetPropertyIdentifier.acked_transitions
            case 1 => BACnetPropertyIdentifier.ack_required
            case 2 => BACnetPropertyIdentifier.action
            case 3 => BACnetPropertyIdentifier.action_text
            case 4 => BACnetPropertyIdentifier.active_text
            case 5 => BACnetPropertyIdentifier.active_vt_sessions
            case 6 => BACnetPropertyIdentifier.alarm_value
            case 7 => BACnetPropertyIdentifier.alarm_values
            case 8 => BACnetPropertyIdentifier.all
            case 9 => BACnetPropertyIdentifier.all_writes_successful
            case 10 => BACnetPropertyIdentifier.apdu_segment_timeout
            case 11 => BACnetPropertyIdentifier.apdu_timeout
            case 12 => BACnetPropertyIdentifier.application_software_version
            case 13 => BACnetPropertyIdentifier.archive
            case 14 => BACnetPropertyIdentifier.bias
            case 15 => BACnetPropertyIdentifier.change_of_state_count
            case 16 => BACnetPropertyIdentifier.change_of_state_time
            case 17 => BACnetPropertyIdentifier.notification_class
            case 19 => BACnetPropertyIdentifier.controlled_variable_reference
            case 20 => BACnetPropertyIdentifier.controlled_variable_units
            case 21 => BACnetPropertyIdentifier.controlled_variable_value
            case 22 => BACnetPropertyIdentifier.cov_increment
            case 23 => BACnetPropertyIdentifier.date_list
            case 24 => BACnetPropertyIdentifier.daylight_savings_status
            case 25 => BACnetPropertyIdentifier.deadband
            case 26 => BACnetPropertyIdentifier.derivative_constant
            case 27 => BACnetPropertyIdentifier.derivative_constant_units
            case 28 => BACnetPropertyIdentifier.description
            case 29 => BACnetPropertyIdentifier.description_of_halt
            case 30 => BACnetPropertyIdentifier.device_address_binding
            case 31 => BACnetPropertyIdentifier.device_type
            case 32 => BACnetPropertyIdentifier.effective_period
            case 33 => BACnetPropertyIdentifier.elapsed_active_time
            case 34 => BACnetPropertyIdentifier.error_limit
            case 35 => BACnetPropertyIdentifier.event_enable
            case 36 => BACnetPropertyIdentifier.event_state
            case 37 => BACnetPropertyIdentifier.event_type
            case 38 => BACnetPropertyIdentifier.exception_schedule
            case 39 => BACnetPropertyIdentifier.fault_values
            case 40 => BACnetPropertyIdentifier.feedback_value
            case 41 => BACnetPropertyIdentifier.file_access_method
            case 42 => BACnetPropertyIdentifier.file_size
            case 43 => BACnetPropertyIdentifier.file_type
            case 44 => BACnetPropertyIdentifier.firmware_revision
            case 45 => BACnetPropertyIdentifier.high_limit
            case 46 => BACnetPropertyIdentifier.inactive_text
            case 47 => BACnetPropertyIdentifier.in_process
            case 48 => BACnetPropertyIdentifier.instance_of
            case 49 => BACnetPropertyIdentifier.integral_constant
            case 50 => BACnetPropertyIdentifier.integral_constant_units
            case 51 => BACnetPropertyIdentifier.issue_confirmed_notifications
            case 52 => BACnetPropertyIdentifier.limit_enable
            case 53 => BACnetPropertyIdentifier.list_of_group_members
            case 54 => BACnetPropertyIdentifier.list_of_object_property_references
            case 56 => BACnetPropertyIdentifier.local_date
            case 57 => BACnetPropertyIdentifier.local_time
            case 58 => BACnetPropertyIdentifier.location
            case 59 => BACnetPropertyIdentifier.low_limit
            case 60 => BACnetPropertyIdentifier.manipulated_variable_reference
            case 61 => BACnetPropertyIdentifier.maximum_output
            case 62 => BACnetPropertyIdentifier.max_apdu_length_accepted
            case 63 => BACnetPropertyIdentifier.max_info_frames
            case 64 => BACnetPropertyIdentifier.max_master
            case 65 => BACnetPropertyIdentifier.max_pres_value
            case 66 => BACnetPropertyIdentifier.minimum_off_time
            case 67 => BACnetPropertyIdentifier.minimum_on_time
            case 68 => BACnetPropertyIdentifier.minimum_output
            case 69 => BACnetPropertyIdentifier.min_pres_value
            case 70 => BACnetPropertyIdentifier.model_name
            case 71 => BACnetPropertyIdentifier.modification_date
            case 72 => BACnetPropertyIdentifier.notify_type
            case 73 => BACnetPropertyIdentifier.number_of_apdu_retries
            case 74 => BACnetPropertyIdentifier.number_of_states
            case 75 => BACnetPropertyIdentifier.object_identifier
            case 76 => BACnetPropertyIdentifier.object_list
            case 77 => BACnetPropertyIdentifier.object_name
            case 78 => BACnetPropertyIdentifier.object_property_reference
            case 79 => BACnetPropertyIdentifier.object_type
            case 80 => BACnetPropertyIdentifier.optional
            case 81 => BACnetPropertyIdentifier.out_of_service
            case 82 => BACnetPropertyIdentifier.output_units
            case 83 => BACnetPropertyIdentifier.event_parameters
            case 84 => BACnetPropertyIdentifier.polarity
            case 85 => BACnetPropertyIdentifier.present_value
            case 86 => BACnetPropertyIdentifier.priority
            case 87 => BACnetPropertyIdentifier.priority_array
            case 88 => BACnetPropertyIdentifier.priority_for_writing
            case 89 => BACnetPropertyIdentifier.process_identifier
            case 90 => BACnetPropertyIdentifier.program_change
            case 91 => BACnetPropertyIdentifier.program_location
            case 92 => BACnetPropertyIdentifier.program_state
            case 93 => BACnetPropertyIdentifier.proportional_constant
            case 94 => BACnetPropertyIdentifier.proportional_constant_units
            case 96 => BACnetPropertyIdentifier.protocol_object_types_supported
            case 97 => BACnetPropertyIdentifier.protocol_services_supported
            case 98 => BACnetPropertyIdentifier.protocol_version
            case 99 => BACnetPropertyIdentifier.read_only
            case 100 => BACnetPropertyIdentifier.reason_for_halt
            case 102 => BACnetPropertyIdentifier.recipient_list
            case 103 => BACnetPropertyIdentifier.reliability
            case 104 => BACnetPropertyIdentifier.relinquish_default
            case 105 => BACnetPropertyIdentifier.required
            case 106 => BACnetPropertyIdentifier.resolution
            case 107 => BACnetPropertyIdentifier.segmentation_supported
            case 108 => BACnetPropertyIdentifier.setpoint
            case 109 => BACnetPropertyIdentifier.setpoint_reference
            case 110 => BACnetPropertyIdentifier.state_text
            case 111 => BACnetPropertyIdentifier.status_flags
            case 112 => BACnetPropertyIdentifier.system_status
            case 113 => BACnetPropertyIdentifier.time_delay
            case 114 => BACnetPropertyIdentifier.time_of_active_time_reset
            case 115 => BACnetPropertyIdentifier.time_of_state_count_reset
            case 116 => BACnetPropertyIdentifier.time_synchronization_recipients
            case 117 => BACnetPropertyIdentifier.units
            case 118 => BACnetPropertyIdentifier.update_interval
            case 119 => BACnetPropertyIdentifier.utc_offset
            case 120 => BACnetPropertyIdentifier.vendor_identifier
            case 121 => BACnetPropertyIdentifier.vendor_name
            case 122 => BACnetPropertyIdentifier.vt_classes_supported
            case 123 => BACnetPropertyIdentifier.weekly_schedule
            case 124 => BACnetPropertyIdentifier.attempted_samples
            case 125 => BACnetPropertyIdentifier.average_value
            case 126 => BACnetPropertyIdentifier.buffer_size
            case 127 => BACnetPropertyIdentifier.client_cov_increment
            case 128 => BACnetPropertyIdentifier.cov_resubscription_interval
            case 130 => BACnetPropertyIdentifier.event_time_stamps
            case 131 => BACnetPropertyIdentifier.log_buffer
            case 132 => BACnetPropertyIdentifier.log_device_object_property
            case 133 => BACnetPropertyIdentifier.enable
            case 134 => BACnetPropertyIdentifier.log_interval
            case 135 => BACnetPropertyIdentifier.maximum_value
            case 136 => BACnetPropertyIdentifier.minimum_value
            case 137 => BACnetPropertyIdentifier.notification_threshold
            case 139 => BACnetPropertyIdentifier.protocol_revision
            case 140 => BACnetPropertyIdentifier.records_since_notification
            case 141 => BACnetPropertyIdentifier.record_count
            case 142 => BACnetPropertyIdentifier.start_time
            case 143 => BACnetPropertyIdentifier.stop_time
            case 144 => BACnetPropertyIdentifier.stop_when_full
            case 145 => BACnetPropertyIdentifier.total_record_count
            case 146 => BACnetPropertyIdentifier.valid_samples
            case 147 => BACnetPropertyIdentifier.window_interval
            case 148 => BACnetPropertyIdentifier.window_samples
            case 149 => BACnetPropertyIdentifier.maximum_value_timestamp
            case 150 => BACnetPropertyIdentifier.minimum_value_timestamp
            case 151 => BACnetPropertyIdentifier.variance_value
            case 152 => BACnetPropertyIdentifier.active_cov_subscriptions
            case 153 => BACnetPropertyIdentifier.backup_failure_timeout
            case 154 => BACnetPropertyIdentifier.configuration_files
            case 155 => BACnetPropertyIdentifier.database_revision
            case 156 => BACnetPropertyIdentifier.direct_reading
            case 157 => BACnetPropertyIdentifier.last_restore_time
            case 158 => BACnetPropertyIdentifier.maintenance_required
            case 159 => BACnetPropertyIdentifier.member_of
            case 160 => BACnetPropertyIdentifier.mode
            case 161 => BACnetPropertyIdentifier.operation_expected
            case 162 => BACnetPropertyIdentifier.setting
            case 163 => BACnetPropertyIdentifier.silenced
            case 164 => BACnetPropertyIdentifier.tracking_value
            case 165 => BACnetPropertyIdentifier.zone_members
            case 166 => BACnetPropertyIdentifier.life_safety_alarm_values
            case 167 => BACnetPropertyIdentifier.max_segments_accepted
            case 168 => BACnetPropertyIdentifier.profile_name
            case 169 => BACnetPropertyIdentifier.auto_slave_discovery
            case 170 => BACnetPropertyIdentifier.manual_slave_address_binding
            case 171 => BACnetPropertyIdentifier.slave_address_binding
            case 172 => BACnetPropertyIdentifier.slave_proxy_enable
            case 173 => BACnetPropertyIdentifier.last_notify_record
            case 174 => BACnetPropertyIdentifier.schedule_default
            case 175 => BACnetPropertyIdentifier.accepted_modes
            case 176 => BACnetPropertyIdentifier.adjust_value
            case 177 => BACnetPropertyIdentifier.count
            case 178 => BACnetPropertyIdentifier.count_before_change
            case 179 => BACnetPropertyIdentifier.count_change_time
            case 180 => BACnetPropertyIdentifier.cov_period
            case 181 => BACnetPropertyIdentifier.input_reference
            case 182 => BACnetPropertyIdentifier.limit_monitoring_interval
            case 183 => BACnetPropertyIdentifier.logging_object
            case 184 => BACnetPropertyIdentifier.logging_record
            case 185 => BACnetPropertyIdentifier.prescale
            case 186 => BACnetPropertyIdentifier.pulse_rate
            case 187 => BACnetPropertyIdentifier.scale
            case 188 => BACnetPropertyIdentifier.scale_factor
            case 189 => BACnetPropertyIdentifier.update_time
            case 190 => BACnetPropertyIdentifier.value_before_change
            case 191 => BACnetPropertyIdentifier.value_set
            case 192 => BACnetPropertyIdentifier.value_change_time
            case 193 => BACnetPropertyIdentifier.align_intervals
            case 195 => BACnetPropertyIdentifier.interval_offset
            case 196 => BACnetPropertyIdentifier.last_restart_reason
            case 197 => BACnetPropertyIdentifier.logging_type
            case 202 => BACnetPropertyIdentifier.restart_notification_recipients
            case 203 => BACnetPropertyIdentifier.time_of_device_restart
            case 204 => BACnetPropertyIdentifier.time_synchronization_interval
            case 205 => BACnetPropertyIdentifier.trigger
            case 206 => BACnetPropertyIdentifier.utc_time_synchronization_recipients
            case 207 => BACnetPropertyIdentifier.node_subtype
            case 208 => BACnetPropertyIdentifier.node_type
            case 209 => BACnetPropertyIdentifier.structured_object_list
            case 210 => BACnetPropertyIdentifier.subordinate_annotations
            case 211 => BACnetPropertyIdentifier.subordinate_list
            case 212 => BACnetPropertyIdentifier.actual_shed_level
            case 213 => BACnetPropertyIdentifier.duty_window
            case 214 => BACnetPropertyIdentifier.expected_shed_level
            case 215 => BACnetPropertyIdentifier.full_duty_baseline
            case 218 => BACnetPropertyIdentifier.requested_shed_level
            case 219 => BACnetPropertyIdentifier.shed_duration
            case 220 => BACnetPropertyIdentifier.shed_level_descriptions
            case 221 => BACnetPropertyIdentifier.shed_levels
            case 222 => BACnetPropertyIdentifier.state_description
            case 226 => BACnetPropertyIdentifier.door_alarm_state
            case 227 => BACnetPropertyIdentifier.door_extended_pulse_time
            case 228 => BACnetPropertyIdentifier.door_members
            case 229 => BACnetPropertyIdentifier.door_open_too_long_time
            case 230 => BACnetPropertyIdentifier.door_pulse_time
            case 231 => BACnetPropertyIdentifier.door_status
            case 232 => BACnetPropertyIdentifier.door_unlock_delay_time
            case 233 => BACnetPropertyIdentifier.lock_status
            case 234 => BACnetPropertyIdentifier.masked_alarm_values
            case 235 => BACnetPropertyIdentifier.secured_status
            case 244 => BACnetPropertyIdentifier.absentee_limit
            case 245 => BACnetPropertyIdentifier.access_alarm_events
            case 246 => BACnetPropertyIdentifier.access_doors
            case 247 => BACnetPropertyIdentifier.access_event
            case 248 => BACnetPropertyIdentifier.access_event_authentication_factor
            case 249 => BACnetPropertyIdentifier.access_event_credential
            case 250 => BACnetPropertyIdentifier.access_event_time
            case 251 => BACnetPropertyIdentifier.access_transaction_events
            case 252 => BACnetPropertyIdentifier.accompaniment
            case 253 => BACnetPropertyIdentifier.accompaniment_time
            case 254 => BACnetPropertyIdentifier.activation_time
            case 255 => BACnetPropertyIdentifier.active_authentication_policy
            case 256 => BACnetPropertyIdentifier.assigned_access_rights
            case 257 => BACnetPropertyIdentifier.authentication_factors
            case 258 => BACnetPropertyIdentifier.authentication_policy_list
            case 259 => BACnetPropertyIdentifier.authentication_policy_names
            case 260 => BACnetPropertyIdentifier.authentication_status
            case 261 => BACnetPropertyIdentifier.authorization_mode
            case 262 => BACnetPropertyIdentifier.belongs_to
            case 263 => BACnetPropertyIdentifier.credential_disable
            case 264 => BACnetPropertyIdentifier.credential_status
            case 265 => BACnetPropertyIdentifier.credentials
            case 266 => BACnetPropertyIdentifier.credentials_in_zone
            case 267 => BACnetPropertyIdentifier.days_remaining
            case 268 => BACnetPropertyIdentifier.entry_points
            case 269 => BACnetPropertyIdentifier.exit_points
            case 270 => BACnetPropertyIdentifier.expiration_time
            case 271 => BACnetPropertyIdentifier.extended_time_enable
            case 272 => BACnetPropertyIdentifier.failed_attempt_events
            case 273 => BACnetPropertyIdentifier.failed_attempts
            case 274 => BACnetPropertyIdentifier.failed_attempts_time
            case 275 => BACnetPropertyIdentifier.last_access_event
            case 276 => BACnetPropertyIdentifier.last_access_point
            case 277 => BACnetPropertyIdentifier.last_credential_added
            case 278 => BACnetPropertyIdentifier.last_credential_added_time
            case 279 => BACnetPropertyIdentifier.last_credential_removed
            case 280 => BACnetPropertyIdentifier.last_credential_removed_time
            case 281 => BACnetPropertyIdentifier.last_use_time
            case 282 => BACnetPropertyIdentifier.lockout
            case 283 => BACnetPropertyIdentifier.lockout_relinquish_time
            case 285 => BACnetPropertyIdentifier.max_failed_attempts
            case 286 => BACnetPropertyIdentifier.members
            case 287 => BACnetPropertyIdentifier.muster_point
            case 288 => BACnetPropertyIdentifier.negative_access_rules
            case 289 => BACnetPropertyIdentifier.number_of_authentication_policies
            case 290 => BACnetPropertyIdentifier.occupancy_count
            case 291 => BACnetPropertyIdentifier.occupancy_count_adjust
            case 292 => BACnetPropertyIdentifier.occupancy_count_enable
            case 294 => BACnetPropertyIdentifier.occupancy_lower_limit
            case 295 => BACnetPropertyIdentifier.occupancy_lower_limit_enforced
            case 296 => BACnetPropertyIdentifier.occupancy_state
            case 297 => BACnetPropertyIdentifier.occupancy_upper_limit
            case 298 => BACnetPropertyIdentifier.occupancy_upper_limit_enforced
            case 300 => BACnetPropertyIdentifier.passback_mode
            case 301 => BACnetPropertyIdentifier.passback_timeout
            case 302 => BACnetPropertyIdentifier.positive_access_rules
            case 303 => BACnetPropertyIdentifier.reason_for_disable
            case 304 => BACnetPropertyIdentifier.supported_formats
            case 305 => BACnetPropertyIdentifier.supported_format_classes
            case 306 => BACnetPropertyIdentifier.threat_authority
            case 307 => BACnetPropertyIdentifier.threat_level
            case 308 => BACnetPropertyIdentifier.trace_flag
            case 309 => BACnetPropertyIdentifier.transaction_notification_class
            case 310 => BACnetPropertyIdentifier.user_external_identifier
            case 311 => BACnetPropertyIdentifier.user_information_reference
            case 317 => BACnetPropertyIdentifier.user_name
            case 318 => BACnetPropertyIdentifier.user_type
            case 319 => BACnetPropertyIdentifier.uses_remaining
            case 320 => BACnetPropertyIdentifier.zone_from
            case 321 => BACnetPropertyIdentifier.zone_to
            case 322 => BACnetPropertyIdentifier.access_event_tag
            case 323 => BACnetPropertyIdentifier.global_identifier
            case 326 => BACnetPropertyIdentifier.verification_time
            case 338 => BACnetPropertyIdentifier.backup_and_restore_state
            case 339 => BACnetPropertyIdentifier.backup_preparation_time
            case 340 => BACnetPropertyIdentifier.restore_completion_time
            case 341 => BACnetPropertyIdentifier.restore_preparation_time
            case 342 => BACnetPropertyIdentifier.bit_mask
            case 343 => BACnetPropertyIdentifier.bit_text
            case 344 => BACnetPropertyIdentifier.is_utc
            case 345 => BACnetPropertyIdentifier.group_members
            case 346 => BACnetPropertyIdentifier.group_member_names
            case 347 => BACnetPropertyIdentifier.member_status_flags
            case 348 => BACnetPropertyIdentifier.requested_update_interval
            case 349 => BACnetPropertyIdentifier.covu_period
            case 350 => BACnetPropertyIdentifier.covu_recipients
            case 351 => BACnetPropertyIdentifier.event_message_texts
            case 352 => BACnetPropertyIdentifier.event_message_texts_config
            case 353 => BACnetPropertyIdentifier.event_detection_enable
            case 354 => BACnetPropertyIdentifier.event_algorithm_inhibit
            case 355 => BACnetPropertyIdentifier.event_algorithm_inhibit_ref
            case 356 => BACnetPropertyIdentifier.time_delay_normal
            case 357 => BACnetPropertyIdentifier.reliability_evaluation_inhibit
            case 358 => BACnetPropertyIdentifier.fault_parameters
            case 359 => BACnetPropertyIdentifier.fault_type
            case 360 => BACnetPropertyIdentifier.local_forwarding_only
            case 361 => BACnetPropertyIdentifier.process_identifier_filter
            case 362 => BACnetPropertyIdentifier.subscribed_recipients
            case 363 => BACnetPropertyIdentifier.port_filter
            case 364 => BACnetPropertyIdentifier.authorization_exemptions
            case 365 => BACnetPropertyIdentifier.allow_group_delay_inhibit
            case 366 => BACnetPropertyIdentifier.channel_number
            case 367 => BACnetPropertyIdentifier.control_groups
            case 368 => BACnetPropertyIdentifier.execution_delay
            case 369 => BACnetPropertyIdentifier.last_priority
            case 370 => BACnetPropertyIdentifier.write_status
            case 371 => BACnetPropertyIdentifier.property_list
            case 372 => BACnetPropertyIdentifier.serial_number
            case 373 => BACnetPropertyIdentifier.blink_warn_enable
            case 374 => BACnetPropertyIdentifier.default_fade_time
            case 375 => BACnetPropertyIdentifier.default_ramp_rate
            case 376 => BACnetPropertyIdentifier.default_step_increment
            case 377 => BACnetPropertyIdentifier.egress_time
            case 378 => BACnetPropertyIdentifier.in_progress
            case 379 => BACnetPropertyIdentifier.instantaneous_power
            case 380 => BACnetPropertyIdentifier.lighting_command
            case 381 => BACnetPropertyIdentifier.lighting_command_default_priority
            case 382 => BACnetPropertyIdentifier.max_actual_value
            case 383 => BACnetPropertyIdentifier.min_actual_value
            case 384 => BACnetPropertyIdentifier.power
            case 385 => BACnetPropertyIdentifier.transition
            case 386 => BACnetPropertyIdentifier.egress_active
            case 387 => BACnetPropertyIdentifier.interface_value
            case 388 => BACnetPropertyIdentifier.fault_high_limit
            case 389 => BACnetPropertyIdentifier.fault_low_limit
            case 390 => BACnetPropertyIdentifier.low_diff_limit
            case 391 => BACnetPropertyIdentifier.strike_count
            case 392 => BACnetPropertyIdentifier.time_of_strike_count_reset
            case 393 => BACnetPropertyIdentifier.default_timeout
            case 394 => BACnetPropertyIdentifier.initial_timeout
            case 395 => BACnetPropertyIdentifier.last_state_change
            case 396 => BACnetPropertyIdentifier.state_change_values
            case 397 => BACnetPropertyIdentifier.timer_running
            case 398 => BACnetPropertyIdentifier.timer_state
            case 399 => BACnetPropertyIdentifier.apdu_length
            case 400 => BACnetPropertyIdentifier.ip_address
            case 401 => BACnetPropertyIdentifier.ip_default_gateway
            case 402 => BACnetPropertyIdentifier.ip_dhcp_enable
            case 403 => BACnetPropertyIdentifier.ip_dhcp_lease_time
            case 404 => BACnetPropertyIdentifier.ip_dhcp_lease_time_remaining
            case 405 => BACnetPropertyIdentifier.ip_dhcp_server
            case 406 => BACnetPropertyIdentifier.ip_dns_server
            case 407 => BACnetPropertyIdentifier.bacnet_ip_global_address
            case 408 => BACnetPropertyIdentifier.bacnet_ip_mode
            case 409 => BACnetPropertyIdentifier.bacnet_ip_multicast_address
            case 410 => BACnetPropertyIdentifier.bacnet_ip_nat_traversal
            case 411 => BACnetPropertyIdentifier.ip_subnet_mask
            case 412 => BACnetPropertyIdentifier.bacnet_ip_udp_port
            case 413 => BACnetPropertyIdentifier.bbmd_accept_fd_registrations
            case 414 => BACnetPropertyIdentifier.bbmd_broadcast_distribution_table
            case 415 => BACnetPropertyIdentifier.bbmd_foreign_device_table
            case 416 => BACnetPropertyIdentifier.changes_pending
            case 417 => BACnetPropertyIdentifier.command
            case 418 => BACnetPropertyIdentifier.fd_bbmd_address
            case 419 => BACnetPropertyIdentifier.fd_subscription_lifetime
            case 420 => BACnetPropertyIdentifier.link_speed
            case 421 => BACnetPropertyIdentifier.link_speeds
            case 422 => BACnetPropertyIdentifier.link_speed_autonegotiate
            case 423 => BACnetPropertyIdentifier.mac_address
            case 424 => BACnetPropertyIdentifier.network_interface_name
            case 425 => BACnetPropertyIdentifier.network_number
            case 426 => BACnetPropertyIdentifier.network_number_quality
            case 427 => BACnetPropertyIdentifier.network_type
            case 428 => BACnetPropertyIdentifier.routing_table
            case 429 => BACnetPropertyIdentifier.virtual_mac_address_table
            case 430 => BACnetPropertyIdentifier.command_time_array
            case 431 => BACnetPropertyIdentifier.current_command_priority
            case 432 => BACnetPropertyIdentifier.last_command_time
            case 433 => BACnetPropertyIdentifier.value_source
            case 434 => BACnetPropertyIdentifier.value_source_array
            case 435 => BACnetPropertyIdentifier.bacnet_ipv6_mode
            case 436 => BACnetPropertyIdentifier.ipv6_address
            case 437 => BACnetPropertyIdentifier.ipv6_prefix_length
            case 438 => BACnetPropertyIdentifier.bacnet_ipv6_udp_port
            case 439 => BACnetPropertyIdentifier.ipv6_default_gateway
            case 440 => BACnetPropertyIdentifier.bacnet_ipv6_multicast_address
            case 441 => BACnetPropertyIdentifier.ipv6_dns_server
            case 442 => BACnetPropertyIdentifier.ipv6_auto_addressing_enable
            case 443 => BACnetPropertyIdentifier.ipv6_dhcp_lease_time
            case 444 => BACnetPropertyIdentifier.ipv6_dhcp_lease_time_remaining
            case 445 => BACnetPropertyIdentifier.ipv6_dhcp_server
            case 446 => BACnetPropertyIdentifier.ipv6_zone_index
            case 447 => BACnetPropertyIdentifier.assigned_landing_calls
            case 448 => BACnetPropertyIdentifier.car_assigned_direction
            case 449 => BACnetPropertyIdentifier.car_door_command
            case 450 => BACnetPropertyIdentifier.car_door_status
            case 451 => BACnetPropertyIdentifier.car_door_text
            case 452 => BACnetPropertyIdentifier.car_door_zone
            case 453 => BACnetPropertyIdentifier.car_drive_status
            case 454 => BACnetPropertyIdentifier.car_load
            case 455 => BACnetPropertyIdentifier.car_load_units
            case 456 => BACnetPropertyIdentifier.car_mode
            case 457 => BACnetPropertyIdentifier.car_moving_direction
            case 458 => BACnetPropertyIdentifier.car_position
            case 459 => BACnetPropertyIdentifier.elevator_group
            case 460 => BACnetPropertyIdentifier.energy_meter
            case 461 => BACnetPropertyIdentifier.energy_meter_ref
            case 462 => BACnetPropertyIdentifier.escalator_mode
            case 463 => BACnetPropertyIdentifier.fault_signals
            case 464 => BACnetPropertyIdentifier.floor_text
            case 465 => BACnetPropertyIdentifier.group_id
            case 467 => BACnetPropertyIdentifier.group_mode
            case 468 => BACnetPropertyIdentifier.higher_deck
            case 469 => BACnetPropertyIdentifier.installation_id
            case 470 => BACnetPropertyIdentifier.landing_calls
            case 471 => BACnetPropertyIdentifier.landing_call_control
            case 472 => BACnetPropertyIdentifier.landing_door_status
            case 473 => BACnetPropertyIdentifier.lower_deck
            case 474 => BACnetPropertyIdentifier.machine_room_id
            case 475 => BACnetPropertyIdentifier.making_car_call
            case 476 => BACnetPropertyIdentifier.next_stopping_floor
            case 477 => BACnetPropertyIdentifier.operation_direction
            case 478 => BACnetPropertyIdentifier.passenger_alarm
            case 479 => BACnetPropertyIdentifier.power_mode
            case 480 => BACnetPropertyIdentifier.registered_car_call
            case 481 => BACnetPropertyIdentifier.active_cov_multiple_subscriptions
            case 482 => BACnetPropertyIdentifier.protocol_level
            case 483 => BACnetPropertyIdentifier.reference_port
            case 484 => BACnetPropertyIdentifier.deployed_profile_location
            case 485 => BACnetPropertyIdentifier.profile_location
            case 486 => BACnetPropertyIdentifier.tags
            case 487 => BACnetPropertyIdentifier.subordinate_node_types
            case 488 => BACnetPropertyIdentifier.subordinate_tags
            case 489 => BACnetPropertyIdentifier.subordinate_relationships
            case 490 => BACnetPropertyIdentifier.default_subordinate_relationship
            case 491 => BACnetPropertyIdentifier.represents
            case 492 => BACnetPropertyIdentifier.default_present_value
            case 493 => BACnetPropertyIdentifier.present_stage
            case 494 => BACnetPropertyIdentifier.stages
            case 495 => BACnetPropertyIdentifier.stage_names
            case 496 => BACnetPropertyIdentifier.target_references
            case 497 => BACnetPropertyIdentifier.audit_source_level
            case 498 => BACnetPropertyIdentifier.audit_level
            case 499 => BACnetPropertyIdentifier.audit_notification_recipient
            case 500 => BACnetPropertyIdentifier.audit_priority_filter
            case 501 => BACnetPropertyIdentifier.auditable_operations
            case 502 => BACnetPropertyIdentifier.delete_on_forward
            case 503 => BACnetPropertyIdentifier.maximum_send_delay
            case 504 => BACnetPropertyIdentifier.monitored_objects
            case 505 => BACnetPropertyIdentifier.send_now
            case 506 => BACnetPropertyIdentifier.floor_number
            case 507 => BACnetPropertyIdentifier.device_uuid
            case x where x <= 511 => BACnetPropertyIdentifier.reserved(x)
            case y where y > 511 && y <= 4194303 => BACnetPropertyIdentifier.non_standardized(y)
            case _ => throw BACnetDecodeError("协议错误.无效属性标识符标签")
        }
    }

    // ==================== 反向转换函数 (枚举 → UInt32) ====================
    public func toUInt32(): UInt32 {
        match (this) {
            case BACnetPropertyIdentifier.acked_transitions => 0
            case BACnetPropertyIdentifier.ack_required => 1
            case BACnetPropertyIdentifier.action => 2
            case BACnetPropertyIdentifier.action_text => 3
            case BACnetPropertyIdentifier.active_text => 4
            case BACnetPropertyIdentifier.active_vt_sessions => 5
            case BACnetPropertyIdentifier.alarm_value => 6
            case BACnetPropertyIdentifier.alarm_values => 7
            case BACnetPropertyIdentifier.all => 8
            case BACnetPropertyIdentifier.all_writes_successful => 9
            case BACnetPropertyIdentifier.apdu_segment_timeout => 10
            case BACnetPropertyIdentifier.apdu_timeout => 11
            case BACnetPropertyIdentifier.application_software_version => 12
            case BACnetPropertyIdentifier.archive => 13
            case BACnetPropertyIdentifier.bias => 14
            case BACnetPropertyIdentifier.change_of_state_count => 15
            case BACnetPropertyIdentifier.change_of_state_time => 16
            case BACnetPropertyIdentifier.notification_class => 17
            case BACnetPropertyIdentifier.controlled_variable_reference => 19
            case BACnetPropertyIdentifier.controlled_variable_units => 20
            case BACnetPropertyIdentifier.controlled_variable_value => 21
            case BACnetPropertyIdentifier.cov_increment => 22
            case BACnetPropertyIdentifier.date_list => 23
            case BACnetPropertyIdentifier.daylight_savings_status => 24
            case BACnetPropertyIdentifier.deadband => 25
            case BACnetPropertyIdentifier.derivative_constant => 26
            case BACnetPropertyIdentifier.derivative_constant_units => 27
            case BACnetPropertyIdentifier.description => 28
            case BACnetPropertyIdentifier.description_of_halt => 29
            case BACnetPropertyIdentifier.device_address_binding => 30
            case BACnetPropertyIdentifier.device_type => 31
            case BACnetPropertyIdentifier.effective_period => 32
            case BACnetPropertyIdentifier.elapsed_active_time => 33
            case BACnetPropertyIdentifier.error_limit => 34
            case BACnetPropertyIdentifier.event_enable => 35
            case BACnetPropertyIdentifier.event_state => 36
            case BACnetPropertyIdentifier.event_type => 37
            case BACnetPropertyIdentifier.exception_schedule => 38
            case BACnetPropertyIdentifier.fault_values => 39
            case BACnetPropertyIdentifier.feedback_value => 40
            case BACnetPropertyIdentifier.file_access_method => 41
            case BACnetPropertyIdentifier.file_size => 42
            case BACnetPropertyIdentifier.file_type => 43
            case BACnetPropertyIdentifier.firmware_revision => 44
            case BACnetPropertyIdentifier.high_limit => 45
            case BACnetPropertyIdentifier.inactive_text => 46
            case BACnetPropertyIdentifier.in_process => 47
            case BACnetPropertyIdentifier.instance_of => 48
            case BACnetPropertyIdentifier.integral_constant => 49
            case BACnetPropertyIdentifier.integral_constant_units => 50
            case BACnetPropertyIdentifier.issue_confirmed_notifications => 51
            case BACnetPropertyIdentifier.limit_enable => 52
            case BACnetPropertyIdentifier.list_of_group_members => 53
            case BACnetPropertyIdentifier.list_of_object_property_references => 54
            case BACnetPropertyIdentifier.local_date => 56
            case BACnetPropertyIdentifier.local_time => 57
            case BACnetPropertyIdentifier.location => 58
            case BACnetPropertyIdentifier.low_limit => 59
            case BACnetPropertyIdentifier.manipulated_variable_reference => 60
            case BACnetPropertyIdentifier.maximum_output => 61
            case BACnetPropertyIdentifier.max_apdu_length_accepted => 62
            case BACnetPropertyIdentifier.max_info_frames => 63
            case BACnetPropertyIdentifier.max_master => 64
            case BACnetPropertyIdentifier.max_pres_value => 65
            case BACnetPropertyIdentifier.minimum_off_time => 66
            case BACnetPropertyIdentifier.minimum_on_time => 67
            case BACnetPropertyIdentifier.minimum_output => 68
            case BACnetPropertyIdentifier.min_pres_value => 69
            case BACnetPropertyIdentifier.model_name => 70
            case BACnetPropertyIdentifier.modification_date => 71
            case BACnetPropertyIdentifier.notify_type => 72
            case BACnetPropertyIdentifier.number_of_apdu_retries => 73
            case BACnetPropertyIdentifier.number_of_states => 74
            case BACnetPropertyIdentifier.object_identifier => 75
            case BACnetPropertyIdentifier.object_list => 76
            case BACnetPropertyIdentifier.object_name => 77
            case BACnetPropertyIdentifier.object_property_reference => 78
            case BACnetPropertyIdentifier.object_type => 79
            case BACnetPropertyIdentifier.optional => 80
            case BACnetPropertyIdentifier.out_of_service => 81
            case BACnetPropertyIdentifier.output_units => 82
            case BACnetPropertyIdentifier.event_parameters => 83
            case BACnetPropertyIdentifier.polarity => 84
            case BACnetPropertyIdentifier.present_value => 85
            case BACnetPropertyIdentifier.priority => 86
            case BACnetPropertyIdentifier.priority_array => 87
            case BACnetPropertyIdentifier.priority_for_writing => 88
            case BACnetPropertyIdentifier.process_identifier => 89
            case BACnetPropertyIdentifier.program_change => 90
            case BACnetPropertyIdentifier.program_location => 91
            case BACnetPropertyIdentifier.program_state => 92
            case BACnetPropertyIdentifier.proportional_constant => 93
            case BACnetPropertyIdentifier.proportional_constant_units => 94
            case BACnetPropertyIdentifier.protocol_object_types_supported => 96
            case BACnetPropertyIdentifier.protocol_services_supported => 97
            case BACnetPropertyIdentifier.protocol_version => 98
            case BACnetPropertyIdentifier.read_only => 99
            case BACnetPropertyIdentifier.reason_for_halt => 100
            case BACnetPropertyIdentifier.recipient_list => 102
            case BACnetPropertyIdentifier.reliability => 103
            case BACnetPropertyIdentifier.relinquish_default => 104
            case BACnetPropertyIdentifier.required => 105
            case BACnetPropertyIdentifier.resolution => 106
            case BACnetPropertyIdentifier.segmentation_supported => 107
            case BACnetPropertyIdentifier.setpoint => 108
            case BACnetPropertyIdentifier.setpoint_reference => 109
            case BACnetPropertyIdentifier.state_text => 110
            case BACnetPropertyIdentifier.status_flags => 111
            case BACnetPropertyIdentifier.system_status => 112
            case BACnetPropertyIdentifier.time_delay => 113
            case BACnetPropertyIdentifier.time_of_active_time_reset => 114
            case BACnetPropertyIdentifier.time_of_state_count_reset => 115
            case BACnetPropertyIdentifier.time_synchronization_recipients => 116
            case BACnetPropertyIdentifier.units => 117
            case BACnetPropertyIdentifier.update_interval => 118
            case BACnetPropertyIdentifier.utc_offset => 119
            case BACnetPropertyIdentifier.vendor_identifier => 120
            case BACnetPropertyIdentifier.vendor_name => 121
            case BACnetPropertyIdentifier.vt_classes_supported => 122
            case BACnetPropertyIdentifier.weekly_schedule => 123
            case BACnetPropertyIdentifier.attempted_samples => 124
            case BACnetPropertyIdentifier.average_value => 125
            case BACnetPropertyIdentifier.buffer_size => 126
            case BACnetPropertyIdentifier.client_cov_increment => 127
            case BACnetPropertyIdentifier.cov_resubscription_interval => 128
            case BACnetPropertyIdentifier.event_time_stamps => 130
            case BACnetPropertyIdentifier.log_buffer => 131
            case BACnetPropertyIdentifier.log_device_object_property => 132
            case BACnetPropertyIdentifier.enable => 133
            case BACnetPropertyIdentifier.log_interval => 134
            case BACnetPropertyIdentifier.maximum_value => 135
            case BACnetPropertyIdentifier.minimum_value => 136
            case BACnetPropertyIdentifier.notification_threshold => 137
            case BACnetPropertyIdentifier.protocol_revision => 139
            case BACnetPropertyIdentifier.records_since_notification => 140
            case BACnetPropertyIdentifier.record_count => 141
            case BACnetPropertyIdentifier.start_time => 142
            case BACnetPropertyIdentifier.stop_time => 143
            case BACnetPropertyIdentifier.stop_when_full => 144
            case BACnetPropertyIdentifier.total_record_count => 145
            case BACnetPropertyIdentifier.valid_samples => 146
            case BACnetPropertyIdentifier.window_interval => 147
            case BACnetPropertyIdentifier.window_samples => 148
            case BACnetPropertyIdentifier.maximum_value_timestamp => 149
            case BACnetPropertyIdentifier.minimum_value_timestamp => 150
            case BACnetPropertyIdentifier.variance_value => 151
            case BACnetPropertyIdentifier.active_cov_subscriptions => 152
            case BACnetPropertyIdentifier.backup_failure_timeout => 153
            case BACnetPropertyIdentifier.configuration_files => 154
            case BACnetPropertyIdentifier.database_revision => 155
            case BACnetPropertyIdentifier.direct_reading => 156
            case BACnetPropertyIdentifier.last_restore_time => 157
            case BACnetPropertyIdentifier.maintenance_required => 158
            case BACnetPropertyIdentifier.member_of => 159
            case BACnetPropertyIdentifier.mode => 160
            case BACnetPropertyIdentifier.operation_expected => 161
            case BACnetPropertyIdentifier.setting => 162
            case BACnetPropertyIdentifier.silenced => 163
            case BACnetPropertyIdentifier.tracking_value => 164
            case BACnetPropertyIdentifier.zone_members => 165
            case BACnetPropertyIdentifier.life_safety_alarm_values => 166
            case BACnetPropertyIdentifier.max_segments_accepted => 167
            case BACnetPropertyIdentifier.profile_name => 168
            case BACnetPropertyIdentifier.auto_slave_discovery => 169
            case BACnetPropertyIdentifier.manual_slave_address_binding => 170
            case BACnetPropertyIdentifier.slave_address_binding => 171
            case BACnetPropertyIdentifier.slave_proxy_enable => 172
            case BACnetPropertyIdentifier.last_notify_record => 173
            case BACnetPropertyIdentifier.schedule_default => 174
            case BACnetPropertyIdentifier.accepted_modes => 175
            case BACnetPropertyIdentifier.adjust_value => 176
            case BACnetPropertyIdentifier.count => 177
            case BACnetPropertyIdentifier.count_before_change => 178
            case BACnetPropertyIdentifier.count_change_time => 179
            case BACnetPropertyIdentifier.cov_period => 180
            case BACnetPropertyIdentifier.input_reference => 181
            case BACnetPropertyIdentifier.limit_monitoring_interval => 182
            case BACnetPropertyIdentifier.logging_object => 183
            case BACnetPropertyIdentifier.logging_record => 184
            case BACnetPropertyIdentifier.prescale => 185
            case BACnetPropertyIdentifier.pulse_rate => 186
            case BACnetPropertyIdentifier.scale => 187
            case BACnetPropertyIdentifier.scale_factor => 188
            case BACnetPropertyIdentifier.update_time => 189
            case BACnetPropertyIdentifier.value_before_change => 190
            case BACnetPropertyIdentifier.value_set => 191
            case BACnetPropertyIdentifier.value_change_time => 192
            case BACnetPropertyIdentifier.align_intervals => 193
            case BACnetPropertyIdentifier.interval_offset => 195
            case BACnetPropertyIdentifier.last_restart_reason => 196
            case BACnetPropertyIdentifier.logging_type => 197
            case BACnetPropertyIdentifier.restart_notification_recipients => 202
            case BACnetPropertyIdentifier.time_of_device_restart => 203
            case BACnetPropertyIdentifier.time_synchronization_interval => 204
            case BACnetPropertyIdentifier.trigger => 205
            case BACnetPropertyIdentifier.utc_time_synchronization_recipients => 206
            case BACnetPropertyIdentifier.node_subtype => 207
            case BACnetPropertyIdentifier.node_type => 208
            case BACnetPropertyIdentifier.structured_object_list => 209
            case BACnetPropertyIdentifier.subordinate_annotations => 210
            case BACnetPropertyIdentifier.subordinate_list => 211
            case BACnetPropertyIdentifier.actual_shed_level => 212
            case BACnetPropertyIdentifier.duty_window => 213
            case BACnetPropertyIdentifier.expected_shed_level => 214
            case BACnetPropertyIdentifier.full_duty_baseline => 215
            case BACnetPropertyIdentifier.requested_shed_level => 218
            case BACnetPropertyIdentifier.shed_duration => 219
            case BACnetPropertyIdentifier.shed_level_descriptions => 220
            case BACnetPropertyIdentifier.shed_levels => 221
            case BACnetPropertyIdentifier.state_description => 222
            case BACnetPropertyIdentifier.door_alarm_state => 226
            case BACnetPropertyIdentifier.door_extended_pulse_time => 227
            case BACnetPropertyIdentifier.door_members => 228
            case BACnetPropertyIdentifier.door_open_too_long_time => 229
            case BACnetPropertyIdentifier.door_pulse_time => 230
            case BACnetPropertyIdentifier.door_status => 231
            case BACnetPropertyIdentifier.door_unlock_delay_time => 232
            case BACnetPropertyIdentifier.lock_status => 233
            case BACnetPropertyIdentifier.masked_alarm_values => 234
            case BACnetPropertyIdentifier.secured_status => 235
            case BACnetPropertyIdentifier.absentee_limit => 244
            case BACnetPropertyIdentifier.access_alarm_events => 245
            case BACnetPropertyIdentifier.access_doors => 246
            case BACnetPropertyIdentifier.access_event => 247
            case BACnetPropertyIdentifier.access_event_authentication_factor => 248
            case BACnetPropertyIdentifier.access_event_credential => 249
            case BACnetPropertyIdentifier.access_event_time => 250
            case BACnetPropertyIdentifier.access_transaction_events => 251
            case BACnetPropertyIdentifier.accompaniment => 252
            case BACnetPropertyIdentifier.accompaniment_time => 253
            case BACnetPropertyIdentifier.activation_time => 254
            case BACnetPropertyIdentifier.active_authentication_policy => 255
            case BACnetPropertyIdentifier.assigned_access_rights => 256
            case BACnetPropertyIdentifier.authentication_factors => 257
            case BACnetPropertyIdentifier.authentication_policy_list => 258
            case BACnetPropertyIdentifier.authentication_policy_names => 259
            case BACnetPropertyIdentifier.authentication_status => 260
            case BACnetPropertyIdentifier.authorization_mode => 261
            case BACnetPropertyIdentifier.belongs_to => 262
            case BACnetPropertyIdentifier.credential_disable => 263
            case BACnetPropertyIdentifier.credential_status => 264
            case BACnetPropertyIdentifier.credentials => 265
            case BACnetPropertyIdentifier.credentials_in_zone => 266
            case BACnetPropertyIdentifier.days_remaining => 267
            case BACnetPropertyIdentifier.entry_points => 268
            case BACnetPropertyIdentifier.exit_points => 269
            case BACnetPropertyIdentifier.expiration_time => 270
            case BACnetPropertyIdentifier.extended_time_enable => 271
            case BACnetPropertyIdentifier.failed_attempt_events => 272
            case BACnetPropertyIdentifier.failed_attempts => 273
            case BACnetPropertyIdentifier.failed_attempts_time => 274
            case BACnetPropertyIdentifier.last_access_event => 275
            case BACnetPropertyIdentifier.last_access_point => 276
            case BACnetPropertyIdentifier.last_credential_added => 277
            case BACnetPropertyIdentifier.last_credential_added_time => 278
            case BACnetPropertyIdentifier.last_credential_removed => 279
            case BACnetPropertyIdentifier.last_credential_removed_time => 280
            case BACnetPropertyIdentifier.last_use_time => 281
            case BACnetPropertyIdentifier.lockout => 282
            case BACnetPropertyIdentifier.lockout_relinquish_time => 283
            case BACnetPropertyIdentifier.max_failed_attempts => 285
            case BACnetPropertyIdentifier.members => 286
            case BACnetPropertyIdentifier.muster_point => 287
            case BACnetPropertyIdentifier.negative_access_rules => 288
            case BACnetPropertyIdentifier.number_of_authentication_policies => 289
            case BACnetPropertyIdentifier.occupancy_count => 290
            case BACnetPropertyIdentifier.occupancy_count_adjust => 291
            case BACnetPropertyIdentifier.occupancy_count_enable => 292
            case BACnetPropertyIdentifier.occupancy_lower_limit => 294
            case BACnetPropertyIdentifier.occupancy_lower_limit_enforced => 295
            case BACnetPropertyIdentifier.occupancy_state => 296
            case BACnetPropertyIdentifier.occupancy_upper_limit => 297
            case BACnetPropertyIdentifier.occupancy_upper_limit_enforced => 298
            case BACnetPropertyIdentifier.passback_mode => 300
            case BACnetPropertyIdentifier.passback_timeout => 301
            case BACnetPropertyIdentifier.positive_access_rules => 302
            case BACnetPropertyIdentifier.reason_for_disable => 303
            case BACnetPropertyIdentifier.supported_formats => 304
            case BACnetPropertyIdentifier.supported_format_classes => 305
            case BACnetPropertyIdentifier.threat_authority => 306
            case BACnetPropertyIdentifier.threat_level => 307
            case BACnetPropertyIdentifier.trace_flag => 308
            case BACnetPropertyIdentifier.transaction_notification_class => 309
            case BACnetPropertyIdentifier.user_external_identifier => 310
            case BACnetPropertyIdentifier.user_information_reference => 311
            case BACnetPropertyIdentifier.user_name => 317
            case BACnetPropertyIdentifier.user_type => 318
            case BACnetPropertyIdentifier.uses_remaining => 319
            case BACnetPropertyIdentifier.zone_from => 320
            case BACnetPropertyIdentifier.zone_to => 321
            case BACnetPropertyIdentifier.access_event_tag => 322
            case BACnetPropertyIdentifier.global_identifier => 323
            case BACnetPropertyIdentifier.verification_time => 326
            case BACnetPropertyIdentifier.backup_and_restore_state => 338
            case BACnetPropertyIdentifier.backup_preparation_time => 339
            case BACnetPropertyIdentifier.restore_completion_time => 340
            case BACnetPropertyIdentifier.restore_preparation_time => 341
            case BACnetPropertyIdentifier.bit_mask => 342
            case BACnetPropertyIdentifier.bit_text => 343
            case BACnetPropertyIdentifier.is_utc => 344
            case BACnetPropertyIdentifier.group_members => 345
            case BACnetPropertyIdentifier.group_member_names => 346
            case BACnetPropertyIdentifier.member_status_flags => 347
            case BACnetPropertyIdentifier.requested_update_interval => 348
            case BACnetPropertyIdentifier.covu_period => 349
            case BACnetPropertyIdentifier.covu_recipients => 350
            case BACnetPropertyIdentifier.event_message_texts => 351
            case BACnetPropertyIdentifier.event_message_texts_config => 352
            case BACnetPropertyIdentifier.event_detection_enable => 353
            case BACnetPropertyIdentifier.event_algorithm_inhibit => 354
            case BACnetPropertyIdentifier.event_algorithm_inhibit_ref => 355
            case BACnetPropertyIdentifier.time_delay_normal => 356
            case BACnetPropertyIdentifier.reliability_evaluation_inhibit => 357
            case BACnetPropertyIdentifier.fault_parameters => 358
            case BACnetPropertyIdentifier.fault_type => 359
            case BACnetPropertyIdentifier.local_forwarding_only => 360
            case BACnetPropertyIdentifier.process_identifier_filter => 361
            case BACnetPropertyIdentifier.subscribed_recipients => 362
            case BACnetPropertyIdentifier.port_filter => 363
            case BACnetPropertyIdentifier.authorization_exemptions => 364
            case BACnetPropertyIdentifier.allow_group_delay_inhibit => 365
            case BACnetPropertyIdentifier.channel_number => 366
            case BACnetPropertyIdentifier.control_groups => 367
            case BACnetPropertyIdentifier.execution_delay => 368
            case BACnetPropertyIdentifier.last_priority => 369
            case BACnetPropertyIdentifier.write_status => 370
            case BACnetPropertyIdentifier.property_list => 371
            case BACnetPropertyIdentifier.serial_number => 372
            case BACnetPropertyIdentifier.blink_warn_enable => 373
            case BACnetPropertyIdentifier.default_fade_time => 374
            case BACnetPropertyIdentifier.default_ramp_rate => 375
            case BACnetPropertyIdentifier.default_step_increment => 376
            case BACnetPropertyIdentifier.egress_time => 377
            case BACnetPropertyIdentifier.in_progress => 378
            case BACnetPropertyIdentifier.instantaneous_power => 379
            case BACnetPropertyIdentifier.lighting_command => 380
            case BACnetPropertyIdentifier.lighting_command_default_priority => 381
            case BACnetPropertyIdentifier.max_actual_value => 382
            case BACnetPropertyIdentifier.min_actual_value => 383
            case BACnetPropertyIdentifier.power => 384
            case BACnetPropertyIdentifier.transition => 385
            case BACnetPropertyIdentifier.egress_active => 386
            case BACnetPropertyIdentifier.interface_value => 387
            case BACnetPropertyIdentifier.fault_high_limit => 388
            case BACnetPropertyIdentifier.fault_low_limit => 389
            case BACnetPropertyIdentifier.low_diff_limit => 390
            case BACnetPropertyIdentifier.strike_count => 391
            case BACnetPropertyIdentifier.time_of_strike_count_reset => 392
            case BACnetPropertyIdentifier.default_timeout => 393
            case BACnetPropertyIdentifier.initial_timeout => 394
            case BACnetPropertyIdentifier.last_state_change => 395
            case BACnetPropertyIdentifier.state_change_values => 396
            case BACnetPropertyIdentifier.timer_running => 397
            case BACnetPropertyIdentifier.timer_state => 398
            case BACnetPropertyIdentifier.apdu_length => 399
            case BACnetPropertyIdentifier.ip_address => 400
            case BACnetPropertyIdentifier.ip_default_gateway => 401
            case BACnetPropertyIdentifier.ip_dhcp_enable => 402
            case BACnetPropertyIdentifier.ip_dhcp_lease_time => 403
            case BACnetPropertyIdentifier.ip_dhcp_lease_time_remaining => 404
            case BACnetPropertyIdentifier.ip_dhcp_server => 405
            case BACnetPropertyIdentifier.ip_dns_server => 406
            case BACnetPropertyIdentifier.bacnet_ip_global_address => 407
            case BACnetPropertyIdentifier.bacnet_ip_mode => 408
            case BACnetPropertyIdentifier.bacnet_ip_multicast_address => 409
            case BACnetPropertyIdentifier.bacnet_ip_nat_traversal => 410
            case BACnetPropertyIdentifier.ip_subnet_mask => 411
            case BACnetPropertyIdentifier.bacnet_ip_udp_port => 412
            case BACnetPropertyIdentifier.bbmd_accept_fd_registrations => 413
            case BACnetPropertyIdentifier.bbmd_broadcast_distribution_table => 414
            case BACnetPropertyIdentifier.bbmd_foreign_device_table => 415
            case BACnetPropertyIdentifier.changes_pending => 416
            case BACnetPropertyIdentifier.command => 417
            case BACnetPropertyIdentifier.fd_bbmd_address => 418
            case BACnetPropertyIdentifier.fd_subscription_lifetime => 419
            case BACnetPropertyIdentifier.link_speed => 420
            case BACnetPropertyIdentifier.link_speeds => 421
            case BACnetPropertyIdentifier.link_speed_autonegotiate => 422
            case BACnetPropertyIdentifier.mac_address => 423
            case BACnetPropertyIdentifier.network_interface_name => 424
            case BACnetPropertyIdentifier.network_number => 425
            case BACnetPropertyIdentifier.network_number_quality => 426
            case BACnetPropertyIdentifier.network_type => 427
            case BACnetPropertyIdentifier.routing_table => 428
            case BACnetPropertyIdentifier.virtual_mac_address_table => 429
            case BACnetPropertyIdentifier.command_time_array => 430
            case BACnetPropertyIdentifier.current_command_priority => 431
            case BACnetPropertyIdentifier.last_command_time => 432
            case BACnetPropertyIdentifier.value_source => 433
            case BACnetPropertyIdentifier.value_source_array => 434
            case BACnetPropertyIdentifier.bacnet_ipv6_mode => 435
            case BACnetPropertyIdentifier.ipv6_address => 436
            case BACnetPropertyIdentifier.ipv6_prefix_length => 437
            case BACnetPropertyIdentifier.bacnet_ipv6_udp_port => 438
            case BACnetPropertyIdentifier.ipv6_default_gateway => 439
            case BACnetPropertyIdentifier.bacnet_ipv6_multicast_address => 440
            case BACnetPropertyIdentifier.ipv6_dns_server => 441
            case BACnetPropertyIdentifier.ipv6_auto_addressing_enable => 442
            case BACnetPropertyIdentifier.ipv6_dhcp_lease_time => 443
            case BACnetPropertyIdentifier.ipv6_dhcp_lease_time_remaining => 444
            case BACnetPropertyIdentifier.ipv6_dhcp_server => 445
            case BACnetPropertyIdentifier.ipv6_zone_index => 446
            case BACnetPropertyIdentifier.assigned_landing_calls => 447
            case BACnetPropertyIdentifier.car_assigned_direction => 448
            case BACnetPropertyIdentifier.car_door_command => 449
            case BACnetPropertyIdentifier.car_door_status => 450
            case BACnetPropertyIdentifier.car_door_text => 451
            case BACnetPropertyIdentifier.car_door_zone => 452
            case BACnetPropertyIdentifier.car_drive_status => 453
            case BACnetPropertyIdentifier.car_load => 454
            case BACnetPropertyIdentifier.car_load_units => 455
            case BACnetPropertyIdentifier.car_mode => 456
            case BACnetPropertyIdentifier.car_moving_direction => 457
            case BACnetPropertyIdentifier.car_position => 458
            case BACnetPropertyIdentifier.elevator_group => 459
            case BACnetPropertyIdentifier.energy_meter => 460
            case BACnetPropertyIdentifier.energy_meter_ref => 461
            case BACnetPropertyIdentifier.escalator_mode => 462
            case BACnetPropertyIdentifier.fault_signals => 463
            case BACnetPropertyIdentifier.floor_text => 464
            case BACnetPropertyIdentifier.group_id => 465
            case BACnetPropertyIdentifier.group_mode => 467
            case BACnetPropertyIdentifier.higher_deck => 468
            case BACnetPropertyIdentifier.installation_id => 469
            case BACnetPropertyIdentifier.landing_calls => 470
            case BACnetPropertyIdentifier.landing_call_control => 471
            case BACnetPropertyIdentifier.landing_door_status => 472
            case BACnetPropertyIdentifier.lower_deck => 473
            case BACnetPropertyIdentifier.machine_room_id => 474
            case BACnetPropertyIdentifier.making_car_call => 475
            case BACnetPropertyIdentifier.next_stopping_floor => 476
            case BACnetPropertyIdentifier.operation_direction => 477
            case BACnetPropertyIdentifier.passenger_alarm => 478
            case BACnetPropertyIdentifier.power_mode => 479
            case BACnetPropertyIdentifier.registered_car_call => 480
            case BACnetPropertyIdentifier.active_cov_multiple_subscriptions => 481
            case BACnetPropertyIdentifier.protocol_level => 482
            case BACnetPropertyIdentifier.reference_port => 483
            case BACnetPropertyIdentifier.deployed_profile_location => 484
            case BACnetPropertyIdentifier.profile_location => 485
            case BACnetPropertyIdentifier.tags => 486
            case BACnetPropertyIdentifier.subordinate_node_types => 487
            case BACnetPropertyIdentifier.subordinate_tags => 488
            case BACnetPropertyIdentifier.subordinate_relationships => 489
            case BACnetPropertyIdentifier.default_subordinate_relationship => 490
            case BACnetPropertyIdentifier.represents => 491
            case BACnetPropertyIdentifier.default_present_value => 492
            case BACnetPropertyIdentifier.present_stage => 493
            case BACnetPropertyIdentifier.stages => 494
            case BACnetPropertyIdentifier.stage_names => 495
            case BACnetPropertyIdentifier.target_references => 496
            case BACnetPropertyIdentifier.audit_source_level => 497
            case BACnetPropertyIdentifier.audit_level => 498
            case BACnetPropertyIdentifier.audit_notification_recipient => 499
            case BACnetPropertyIdentifier.audit_priority_filter => 500
            case BACnetPropertyIdentifier.auditable_operations => 501
            case BACnetPropertyIdentifier.delete_on_forward => 502
            case BACnetPropertyIdentifier.maximum_send_delay => 503
            case BACnetPropertyIdentifier.monitored_objects => 504
            case BACnetPropertyIdentifier.send_now => 505
            case BACnetPropertyIdentifier.floor_number => 506
            case BACnetPropertyIdentifier.device_uuid => 507
            case BACnetPropertyIdentifier.reserved(x) => x
            case BACnetPropertyIdentifier.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case BACnetPropertyIdentifier.acked_transitions => "acked_transitions"
            case BACnetPropertyIdentifier.ack_required => "ack_required"
            case BACnetPropertyIdentifier.action => "action"
            case BACnetPropertyIdentifier.action_text => "action_text"
            case BACnetPropertyIdentifier.active_text => "active_text"
            case BACnetPropertyIdentifier.active_vt_sessions => "active_vt_sessions"
            case BACnetPropertyIdentifier.alarm_value => "alarm_value"
            case BACnetPropertyIdentifier.alarm_values => "alarm_values"
            case BACnetPropertyIdentifier.all => "all"
            case BACnetPropertyIdentifier.all_writes_successful => "all_writes_successful"
            case BACnetPropertyIdentifier.apdu_segment_timeout => "apdu_segment_timeout"
            case BACnetPropertyIdentifier.apdu_timeout => "apdu_timeout"
            case BACnetPropertyIdentifier.application_software_version => "application_software_version"
            case BACnetPropertyIdentifier.archive => "archive"
            case BACnetPropertyIdentifier.bias => "bias"
            case BACnetPropertyIdentifier.change_of_state_count => "change_of_state_count"
            case BACnetPropertyIdentifier.change_of_state_time => "change_of_state_time"
            case BACnetPropertyIdentifier.notification_class => "notification_class"
            case BACnetPropertyIdentifier.controlled_variable_reference => "controlled_variable_reference"
            case BACnetPropertyIdentifier.controlled_variable_units => "controlled_variable_units"
            case BACnetPropertyIdentifier.controlled_variable_value => "controlled_variable_value"
            case BACnetPropertyIdentifier.cov_increment => "cov_increment"
            case BACnetPropertyIdentifier.date_list => "date_list"
            case BACnetPropertyIdentifier.daylight_savings_status => "daylight_savings_status"
            case BACnetPropertyIdentifier.deadband => "deadband"
            case BACnetPropertyIdentifier.derivative_constant => "derivative_constant"
            case BACnetPropertyIdentifier.derivative_constant_units => "derivative_constant_units"
            case BACnetPropertyIdentifier.description => "description"
            case BACnetPropertyIdentifier.description_of_halt => "description_of_halt"
            case BACnetPropertyIdentifier.device_address_binding => "device_address_binding"
            case BACnetPropertyIdentifier.device_type => "device_type"
            case BACnetPropertyIdentifier.effective_period => "effective_period"
            case BACnetPropertyIdentifier.elapsed_active_time => "elapsed_active_time"
            case BACnetPropertyIdentifier.error_limit => "error_limit"
            case BACnetPropertyIdentifier.event_enable => "event_enable"
            case BACnetPropertyIdentifier.event_state => "event_state"
            case BACnetPropertyIdentifier.event_type => "event_type"
            case BACnetPropertyIdentifier.exception_schedule => "exception_schedule"
            case BACnetPropertyIdentifier.fault_values => "fault_values"
            case BACnetPropertyIdentifier.feedback_value => "feedback_value"
            case BACnetPropertyIdentifier.file_access_method => "file_access_method"
            case BACnetPropertyIdentifier.file_size => "file_size"
            case BACnetPropertyIdentifier.file_type => "file_type"
            case BACnetPropertyIdentifier.firmware_revision => "firmware_revision"
            case BACnetPropertyIdentifier.high_limit => "high_limit"
            case BACnetPropertyIdentifier.inactive_text => "inactive_text"
            case BACnetPropertyIdentifier.in_process => "in_process"
            case BACnetPropertyIdentifier.instance_of => "instance_of"
            case BACnetPropertyIdentifier.integral_constant => "integral_constant"
            case BACnetPropertyIdentifier.integral_constant_units => "integral_constant_units"
            case BACnetPropertyIdentifier.issue_confirmed_notifications => "issue_confirmed_notifications"
            case BACnetPropertyIdentifier.limit_enable => "limit_enable"
            case BACnetPropertyIdentifier.list_of_group_members => "list_of_group_members"
            case BACnetPropertyIdentifier.list_of_object_property_references => "list_of_object_property_references"
            case BACnetPropertyIdentifier.local_date => "local_date"
            case BACnetPropertyIdentifier.local_time => "local_time"
            case BACnetPropertyIdentifier.location => "location"
            case BACnetPropertyIdentifier.low_limit => "low_limit"
            case BACnetPropertyIdentifier.manipulated_variable_reference => "manipulated_variable_reference"
            case BACnetPropertyIdentifier.maximum_output => "maximum_output"
            case BACnetPropertyIdentifier.max_apdu_length_accepted => "max_apdu_length_accepted"
            case BACnetPropertyIdentifier.max_info_frames => "max_info_frames"
            case BACnetPropertyIdentifier.max_master => "max_master"
            case BACnetPropertyIdentifier.max_pres_value => "max_pres_value"
            case BACnetPropertyIdentifier.minimum_off_time => "minimum_off_time"
            case BACnetPropertyIdentifier.minimum_on_time => "minimum_on_time"
            case BACnetPropertyIdentifier.minimum_output => "minimum_output"
            case BACnetPropertyIdentifier.min_pres_value => "min_pres_value"
            case BACnetPropertyIdentifier.model_name => "model_name"
            case BACnetPropertyIdentifier.modification_date => "modification_date"
            case BACnetPropertyIdentifier.notify_type => "notify_type"
            case BACnetPropertyIdentifier.number_of_apdu_retries => "number_of_apdu_retries"
            case BACnetPropertyIdentifier.number_of_states => "number_of_states"
            case BACnetPropertyIdentifier.object_identifier => "object_identifier"
            case BACnetPropertyIdentifier.object_list => "object_list"
            case BACnetPropertyIdentifier.object_name => "object_name"
            case BACnetPropertyIdentifier.object_property_reference => "object_property_reference"
            case BACnetPropertyIdentifier.object_type => "object_type"
            case BACnetPropertyIdentifier.optional => "optional"
            case BACnetPropertyIdentifier.out_of_service => "out_of_service"
            case BACnetPropertyIdentifier.output_units => "output_units"
            case BACnetPropertyIdentifier.event_parameters => "event_parameters"
            case BACnetPropertyIdentifier.polarity => "polarity"
            case BACnetPropertyIdentifier.present_value => "present_value"
            case BACnetPropertyIdentifier.priority => "priority"
            case BACnetPropertyIdentifier.priority_array => "priority_array"
            case BACnetPropertyIdentifier.priority_for_writing => "priority_for_writing"
            case BACnetPropertyIdentifier.process_identifier => "process_identifier"
            case BACnetPropertyIdentifier.program_change => "program_change"
            case BACnetPropertyIdentifier.program_location => "program_location"
            case BACnetPropertyIdentifier.program_state => "program_state"
            case BACnetPropertyIdentifier.proportional_constant => "proportional_constant"
            case BACnetPropertyIdentifier.proportional_constant_units => "proportional_constant_units"
            case BACnetPropertyIdentifier.protocol_object_types_supported => "protocol_object_types_supported"
            case BACnetPropertyIdentifier.protocol_services_supported => "protocol_services_supported"
            case BACnetPropertyIdentifier.protocol_version => "protocol_version"
            case BACnetPropertyIdentifier.read_only => "read_only"
            case BACnetPropertyIdentifier.reason_for_halt => "reason_for_halt"
            case BACnetPropertyIdentifier.recipient_list => "recipient_list"
            case BACnetPropertyIdentifier.reliability => "reliability"
            case BACnetPropertyIdentifier.relinquish_default => "relinquish_default"
            case BACnetPropertyIdentifier.required => "required"
            case BACnetPropertyIdentifier.resolution => "resolution"
            case BACnetPropertyIdentifier.segmentation_supported => "segmentation_supported"
            case BACnetPropertyIdentifier.setpoint => "setpoint"
            case BACnetPropertyIdentifier.setpoint_reference => "setpoint_reference"
            case BACnetPropertyIdentifier.state_text => "state_text"
            case BACnetPropertyIdentifier.status_flags => "status_flags"
            case BACnetPropertyIdentifier.system_status => "system_status"
            case BACnetPropertyIdentifier.time_delay => "time_delay"
            case BACnetPropertyIdentifier.time_of_active_time_reset => "time_of_active_time_reset"
            case BACnetPropertyIdentifier.time_of_state_count_reset => "time_of_state_count_reset"
            case BACnetPropertyIdentifier.time_synchronization_recipients => "time_synchronization_recipients"
            case BACnetPropertyIdentifier.units => "units"
            case BACnetPropertyIdentifier.update_interval => "update_interval"
            case BACnetPropertyIdentifier.utc_offset => "utc_offset"
            case BACnetPropertyIdentifier.vendor_identifier => "vendor_identifier"
            case BACnetPropertyIdentifier.vendor_name => "vendor_name"
            case BACnetPropertyIdentifier.vt_classes_supported => "vt_classes_supported"
            case BACnetPropertyIdentifier.weekly_schedule => "weekly_schedule"
            case BACnetPropertyIdentifier.attempted_samples => "attempted_samples"
            case BACnetPropertyIdentifier.average_value => "average_value"
            case BACnetPropertyIdentifier.buffer_size => "buffer_size"
            case BACnetPropertyIdentifier.client_cov_increment => "client_cov_increment"
            case BACnetPropertyIdentifier.cov_resubscription_interval => "cov_resubscription_interval"
            case BACnetPropertyIdentifier.event_time_stamps => "event_time_stamps"
            case BACnetPropertyIdentifier.log_buffer => "log_buffer"
            case BACnetPropertyIdentifier.log_device_object_property => "log_device_object_property"
            case BACnetPropertyIdentifier.enable => "enable"
            case BACnetPropertyIdentifier.log_interval => "log_interval"
            case BACnetPropertyIdentifier.maximum_value => "maximum_value"
            case BACnetPropertyIdentifier.minimum_value => "minimum_value"
            case BACnetPropertyIdentifier.notification_threshold => "notification_threshold"
            case BACnetPropertyIdentifier.protocol_revision => "protocol_revision"
            case BACnetPropertyIdentifier.records_since_notification => "records_since_notification"
            case BACnetPropertyIdentifier.record_count => "record_count"
            case BACnetPropertyIdentifier.start_time => "start_time"
            case BACnetPropertyIdentifier.stop_time => "stop_time"
            case BACnetPropertyIdentifier.stop_when_full => "stop_when_full"
            case BACnetPropertyIdentifier.total_record_count => "total_record_count"
            case BACnetPropertyIdentifier.valid_samples => "valid_samples"
            case BACnetPropertyIdentifier.window_interval => "window_interval"
            case BACnetPropertyIdentifier.window_samples => "window_samples"
            case BACnetPropertyIdentifier.maximum_value_timestamp => "maximum_value_timestamp"
            case BACnetPropertyIdentifier.minimum_value_timestamp => "minimum_value_timestamp"
            case BACnetPropertyIdentifier.variance_value => "variance_value"
            case BACnetPropertyIdentifier.active_cov_subscriptions => "active_cov_subscriptions"
            case BACnetPropertyIdentifier.backup_failure_timeout => "backup_failure_timeout"
            case BACnetPropertyIdentifier.configuration_files => "configuration_files"
            case BACnetPropertyIdentifier.database_revision => "database_revision"
            case BACnetPropertyIdentifier.direct_reading => "direct_reading"
            case BACnetPropertyIdentifier.last_restore_time => "last_restore_time"
            case BACnetPropertyIdentifier.maintenance_required => "maintenance_required"
            case BACnetPropertyIdentifier.member_of => "member_of"
            case BACnetPropertyIdentifier.mode => "mode"
            case BACnetPropertyIdentifier.operation_expected => "operation_expected"
            case BACnetPropertyIdentifier.setting => "setting"
            case BACnetPropertyIdentifier.silenced => "silenced"
            case BACnetPropertyIdentifier.tracking_value => "tracking_value"
            case BACnetPropertyIdentifier.zone_members => "zone_members"
            case BACnetPropertyIdentifier.life_safety_alarm_values => "life_safety_alarm_values"
            case BACnetPropertyIdentifier.max_segments_accepted => "max_segments_accepted"
            case BACnetPropertyIdentifier.profile_name => "profile_name"
            case BACnetPropertyIdentifier.auto_slave_discovery => "auto_slave_discovery"
            case BACnetPropertyIdentifier.manual_slave_address_binding => "manual_slave_address_binding"
            case BACnetPropertyIdentifier.slave_address_binding => "slave_address_binding"
            case BACnetPropertyIdentifier.slave_proxy_enable => "slave_proxy_enable"
            case BACnetPropertyIdentifier.last_notify_record => "last_notify_record"
            case BACnetPropertyIdentifier.schedule_default => "schedule_default"
            case BACnetPropertyIdentifier.accepted_modes => "accepted_modes"
            case BACnetPropertyIdentifier.adjust_value => "adjust_value"
            case BACnetPropertyIdentifier.count => "count"
            case BACnetPropertyIdentifier.count_before_change => "count_before_change"
            case BACnetPropertyIdentifier.count_change_time => "count_change_time"
            case BACnetPropertyIdentifier.cov_period => "cov_period"
            case BACnetPropertyIdentifier.input_reference => "input_reference"
            case BACnetPropertyIdentifier.limit_monitoring_interval => "limit_monitoring_interval"
            case BACnetPropertyIdentifier.logging_object => "logging_object"
            case BACnetPropertyIdentifier.logging_record => "logging_record"
            case BACnetPropertyIdentifier.prescale => "prescale"
            case BACnetPropertyIdentifier.pulse_rate => "pulse_rate"
            case BACnetPropertyIdentifier.scale => "scale"
            case BACnetPropertyIdentifier.scale_factor => "scale_factor"
            case BACnetPropertyIdentifier.update_time => "update_time"
            case BACnetPropertyIdentifier.value_before_change => "value_before_change"
            case BACnetPropertyIdentifier.value_set => "value_set"
            case BACnetPropertyIdentifier.value_change_time => "value_change_time"
            case BACnetPropertyIdentifier.align_intervals => "align_intervals"
            case BACnetPropertyIdentifier.interval_offset => "interval_offset"
            case BACnetPropertyIdentifier.last_restart_reason => "last_restart_reason"
            case BACnetPropertyIdentifier.logging_type => "logging_type"
            case BACnetPropertyIdentifier.restart_notification_recipients => "restart_notification_recipients"
            case BACnetPropertyIdentifier.time_of_device_restart => "time_of_device_restart"
            case BACnetPropertyIdentifier.time_synchronization_interval => "time_synchronization_interval"
            case BACnetPropertyIdentifier.trigger => "trigger"
            case BACnetPropertyIdentifier.utc_time_synchronization_recipients => "utc_time_synchronization_recipients"
            case BACnetPropertyIdentifier.node_subtype => "node_subtype"
            case BACnetPropertyIdentifier.node_type => "node_type"
            case BACnetPropertyIdentifier.structured_object_list => "structured_object_list"
            case BACnetPropertyIdentifier.subordinate_annotations => "subordinate_annotations"
            case BACnetPropertyIdentifier.subordinate_list => "subordinate_list"
            case BACnetPropertyIdentifier.actual_shed_level => "actual_shed_level"
            case BACnetPropertyIdentifier.duty_window => "duty_window"
            case BACnetPropertyIdentifier.expected_shed_level => "expected_shed_level"
            case BACnetPropertyIdentifier.full_duty_baseline => "full_duty_baseline"
            case BACnetPropertyIdentifier.requested_shed_level => "requested_shed_level"
            case BACnetPropertyIdentifier.shed_duration => "shed_duration"
            case BACnetPropertyIdentifier.shed_level_descriptions => "shed_level_descriptions"
            case BACnetPropertyIdentifier.shed_levels => "shed_levels"
            case BACnetPropertyIdentifier.state_description => "state_description"
            case BACnetPropertyIdentifier.door_alarm_state => "door_alarm_state"
            case BACnetPropertyIdentifier.door_extended_pulse_time => "door_extended_pulse_time"
            case BACnetPropertyIdentifier.door_members => "door_members"
            case BACnetPropertyIdentifier.door_open_too_long_time => "door_open_too_long_time"
            case BACnetPropertyIdentifier.door_pulse_time => "door_pulse_time"
            case BACnetPropertyIdentifier.door_status => "door_status"
            case BACnetPropertyIdentifier.door_unlock_delay_time => "door_unlock_delay_time"
            case BACnetPropertyIdentifier.lock_status => "lock_status"
            case BACnetPropertyIdentifier.masked_alarm_values => "masked_alarm_values"
            case BACnetPropertyIdentifier.secured_status => "secured_status"
            case BACnetPropertyIdentifier.absentee_limit => "absentee_limit"
            case BACnetPropertyIdentifier.access_alarm_events => "access_alarm_events"
            case BACnetPropertyIdentifier.access_doors => "access_doors"
            case BACnetPropertyIdentifier.access_event => "access_event"
            case BACnetPropertyIdentifier.access_event_authentication_factor => "access_event_authentication_factor"
            case BACnetPropertyIdentifier.access_event_credential => "access_event_credential"
            case BACnetPropertyIdentifier.access_event_time => "access_event_time"
            case BACnetPropertyIdentifier.access_transaction_events => "access_transaction_events"
            case BACnetPropertyIdentifier.accompaniment => "accompaniment"
            case BACnetPropertyIdentifier.accompaniment_time => "accompaniment_time"
            case BACnetPropertyIdentifier.activation_time => "activation_time"
            case BACnetPropertyIdentifier.active_authentication_policy => "active_authentication_policy"
            case BACnetPropertyIdentifier.assigned_access_rights => "assigned_access_rights"
            case BACnetPropertyIdentifier.authentication_factors => "authentication_factors"
            case BACnetPropertyIdentifier.authentication_policy_list => "authentication_policy_list"
            case BACnetPropertyIdentifier.authentication_policy_names => "authentication_policy_names"
            case BACnetPropertyIdentifier.authentication_status => "authentication_status"
            case BACnetPropertyIdentifier.authorization_mode => "authorization_mode"
            case BACnetPropertyIdentifier.belongs_to => "belongs_to"
            case BACnetPropertyIdentifier.credential_disable => "credential_disable"
            case BACnetPropertyIdentifier.credential_status => "credential_status"
            case BACnetPropertyIdentifier.credentials => "credentials"
            case BACnetPropertyIdentifier.credentials_in_zone => "credentials_in_zone"
            case BACnetPropertyIdentifier.days_remaining => "days_remaining"
            case BACnetPropertyIdentifier.entry_points => "entry_points"
            case BACnetPropertyIdentifier.exit_points => "exit_points"
            case BACnetPropertyIdentifier.expiration_time => "expiration_time"
            case BACnetPropertyIdentifier.extended_time_enable => "extended_time_enable"
            case BACnetPropertyIdentifier.failed_attempt_events => "failed_attempt_events"
            case BACnetPropertyIdentifier.failed_attempts => "failed_attempts"
            case BACnetPropertyIdentifier.failed_attempts_time => "failed_attempts_time"
            case BACnetPropertyIdentifier.last_access_event => "last_access_event"
            case BACnetPropertyIdentifier.last_access_point => "last_access_point"
            case BACnetPropertyIdentifier.last_credential_added => "last_credential_added"
            case BACnetPropertyIdentifier.last_credential_added_time => "last_credential_added_time"
            case BACnetPropertyIdentifier.last_credential_removed => "last_credential_removed"
            case BACnetPropertyIdentifier.last_credential_removed_time => "last_credential_removed_time"
            case BACnetPropertyIdentifier.last_use_time => "last_use_time"
            case BACnetPropertyIdentifier.lockout => "lockout"
            case BACnetPropertyIdentifier.lockout_relinquish_time => "lockout_relinquish_time"
            case BACnetPropertyIdentifier.max_failed_attempts => "max_failed_attempts"
            case BACnetPropertyIdentifier.members => "members"
            case BACnetPropertyIdentifier.muster_point => "muster_point"
            case BACnetPropertyIdentifier.negative_access_rules => "negative_access_rules"
            case BACnetPropertyIdentifier.number_of_authentication_policies => "number_of_authentication_policies"
            case BACnetPropertyIdentifier.occupancy_count => "occupancy_count"
            case BACnetPropertyIdentifier.occupancy_count_adjust => "occupancy_count_adjust"
            case BACnetPropertyIdentifier.occupancy_count_enable => "occupancy_count_enable"
            case BACnetPropertyIdentifier.occupancy_lower_limit => "occupancy_lower_limit"
            case BACnetPropertyIdentifier.occupancy_lower_limit_enforced => "occupancy_lower_limit_enforced"
            case BACnetPropertyIdentifier.occupancy_state => "occupancy_state"
            case BACnetPropertyIdentifier.occupancy_upper_limit => "occupancy_upper_limit"
            case BACnetPropertyIdentifier.occupancy_upper_limit_enforced => "occupancy_upper_limit_enforced"
            case BACnetPropertyIdentifier.passback_mode => "passback_mode"
            case BACnetPropertyIdentifier.passback_timeout => "passback_timeout"
            case BACnetPropertyIdentifier.positive_access_rules => "positive_access_rules"
            case BACnetPropertyIdentifier.reason_for_disable => "reason_for_disable"
            case BACnetPropertyIdentifier.supported_formats => "supported_formats"
            case BACnetPropertyIdentifier.supported_format_classes => "supported_format_classes"
            case BACnetPropertyIdentifier.threat_authority => "threat_authority"
            case BACnetPropertyIdentifier.threat_level => "threat_level"
            case BACnetPropertyIdentifier.trace_flag => "trace_flag"
            case BACnetPropertyIdentifier.transaction_notification_class => "transaction_notification_class"
            case BACnetPropertyIdentifier.user_external_identifier => "user_external_identifier"
            case BACnetPropertyIdentifier.user_information_reference => "user_information_reference"
            case BACnetPropertyIdentifier.user_name => "user_name"
            case BACnetPropertyIdentifier.user_type => "user_type"
            case BACnetPropertyIdentifier.uses_remaining => "uses_remaining"
            case BACnetPropertyIdentifier.zone_from => "zone_from"
            case BACnetPropertyIdentifier.zone_to => "zone_to"
            case BACnetPropertyIdentifier.access_event_tag => "access_event_tag"
            case BACnetPropertyIdentifier.global_identifier => "global_identifier"
            case BACnetPropertyIdentifier.verification_time => "verification_time"
            case BACnetPropertyIdentifier.backup_and_restore_state => "backup_and_restore_state"
            case BACnetPropertyIdentifier.backup_preparation_time => "backup_preparation_time"
            case BACnetPropertyIdentifier.restore_completion_time => "restore_completion_time"
            case BACnetPropertyIdentifier.restore_preparation_time => "restore_preparation_time"
            case BACnetPropertyIdentifier.bit_mask => "bit_mask"
            case BACnetPropertyIdentifier.bit_text => "bit_text"
            case BACnetPropertyIdentifier.is_utc => "is_utc"
            case BACnetPropertyIdentifier.group_members => "group_members"
            case BACnetPropertyIdentifier.group_member_names => "group_member_names"
            case BACnetPropertyIdentifier.member_status_flags => "member_status_flags"
            case BACnetPropertyIdentifier.requested_update_interval => "requested_update_interval"
            case BACnetPropertyIdentifier.covu_period => "covu_period"
            case BACnetPropertyIdentifier.covu_recipients => "covu_recipients"
            case BACnetPropertyIdentifier.event_message_texts => "event_message_texts"
            case BACnetPropertyIdentifier.event_message_texts_config => "event_message_texts_config"
            case BACnetPropertyIdentifier.event_detection_enable => "event_detection_enable"
            case BACnetPropertyIdentifier.event_algorithm_inhibit => "event_algorithm_inhibit"
            case BACnetPropertyIdentifier.event_algorithm_inhibit_ref => "event_algorithm_inhibit_ref"
            case BACnetPropertyIdentifier.time_delay_normal => "time_delay_normal"
            case BACnetPropertyIdentifier.reliability_evaluation_inhibit => "reliability_evaluation_inhibit"
            case BACnetPropertyIdentifier.fault_parameters => "fault_parameters"
            case BACnetPropertyIdentifier.fault_type => "fault_type"
            case BACnetPropertyIdentifier.local_forwarding_only => "local_forwarding_only"
            case BACnetPropertyIdentifier.process_identifier_filter => "process_identifier_filter"
            case BACnetPropertyIdentifier.subscribed_recipients => "subscribed_recipients"
            case BACnetPropertyIdentifier.port_filter => "port_filter"
            case BACnetPropertyIdentifier.authorization_exemptions => "authorization_exemptions"
            case BACnetPropertyIdentifier.allow_group_delay_inhibit => "allow_group_delay_inhibit"
            case BACnetPropertyIdentifier.channel_number => "channel_number"
            case BACnetPropertyIdentifier.control_groups => "control_groups"
            case BACnetPropertyIdentifier.execution_delay => "execution_delay"
            case BACnetPropertyIdentifier.last_priority => "last_priority"
            case BACnetPropertyIdentifier.write_status => "write_status"
            case BACnetPropertyIdentifier.property_list => "property_list"
            case BACnetPropertyIdentifier.serial_number => "serial_number"
            case BACnetPropertyIdentifier.blink_warn_enable => "blink_warn_enable"
            case BACnetPropertyIdentifier.default_fade_time => "default_fade_time"
            case BACnetPropertyIdentifier.default_ramp_rate => "default_ramp_rate"
            case BACnetPropertyIdentifier.default_step_increment => "default_step_increment"
            case BACnetPropertyIdentifier.egress_time => "egress_time"
            case BACnetPropertyIdentifier.in_progress => "in_progress"
            case BACnetPropertyIdentifier.instantaneous_power => "instantaneous_power"
            case BACnetPropertyIdentifier.lighting_command => "lighting_command"
            case BACnetPropertyIdentifier.lighting_command_default_priority => "lighting_command_default_priority"
            case BACnetPropertyIdentifier.max_actual_value => "max_actual_value"
            case BACnetPropertyIdentifier.min_actual_value => "min_actual_value"
            case BACnetPropertyIdentifier.power => "power"
            case BACnetPropertyIdentifier.transition => "transition"
            case BACnetPropertyIdentifier.egress_active => "egress_active"
            case BACnetPropertyIdentifier.interface_value => "interface_value"
            case BACnetPropertyIdentifier.fault_high_limit => "fault_high_limit"
            case BACnetPropertyIdentifier.fault_low_limit => "fault_low_limit"
            case BACnetPropertyIdentifier.low_diff_limit => "low_diff_limit"
            case BACnetPropertyIdentifier.strike_count => "strike_count"
            case BACnetPropertyIdentifier.time_of_strike_count_reset => "time_of_strike_count_reset"
            case BACnetPropertyIdentifier.default_timeout => "default_timeout"
            case BACnetPropertyIdentifier.initial_timeout => "initial_timeout"
            case BACnetPropertyIdentifier.last_state_change => "last_state_change"
            case BACnetPropertyIdentifier.state_change_values => "state_change_values"
            case BACnetPropertyIdentifier.timer_running => "timer_running"
            case BACnetPropertyIdentifier.timer_state => "timer_state"
            case BACnetPropertyIdentifier.apdu_length => "apdu_length"
            case BACnetPropertyIdentifier.ip_address => "ip_address"
            case BACnetPropertyIdentifier.ip_default_gateway => "ip_default_gateway"
            case BACnetPropertyIdentifier.ip_dhcp_enable => "ip_dhcp_enable"
            case BACnetPropertyIdentifier.ip_dhcp_lease_time => "ip_dhcp_lease_time"
            case BACnetPropertyIdentifier.ip_dhcp_lease_time_remaining => "ip_dhcp_lease_time_remaining"
            case BACnetPropertyIdentifier.ip_dhcp_server => "ip_dhcp_server"
            case BACnetPropertyIdentifier.ip_dns_server => "ip_dns_server"
            case BACnetPropertyIdentifier.bacnet_ip_global_address => "bacnet_ip_global_address"
            case BACnetPropertyIdentifier.bacnet_ip_mode => "bacnet_ip_mode"
            case BACnetPropertyIdentifier.bacnet_ip_multicast_address => "bacnet_ip_multicast_address"
            case BACnetPropertyIdentifier.bacnet_ip_nat_traversal => "bacnet_ip_nat_traversal"
            case BACnetPropertyIdentifier.ip_subnet_mask => "ip_subnet_mask"
            case BACnetPropertyIdentifier.bacnet_ip_udp_port => "bacnet_ip_udp_port"
            case BACnetPropertyIdentifier.bbmd_accept_fd_registrations => "bbmd_accept_fd_registrations"
            case BACnetPropertyIdentifier.bbmd_broadcast_distribution_table => "bbmd_broadcast_distribution_table"
            case BACnetPropertyIdentifier.bbmd_foreign_device_table => "bbmd_foreign_device_table"
            case BACnetPropertyIdentifier.changes_pending => "changes_pending"
            case BACnetPropertyIdentifier.command => "command"
            case BACnetPropertyIdentifier.fd_bbmd_address => "fd_bbmd_address"
            case BACnetPropertyIdentifier.fd_subscription_lifetime => "fd_subscription_lifetime"
            case BACnetPropertyIdentifier.link_speed => "link_speed"
            case BACnetPropertyIdentifier.link_speeds => "link_speeds"
            case BACnetPropertyIdentifier.link_speed_autonegotiate => "link_speed_autonegotiate"
            case BACnetPropertyIdentifier.mac_address => "mac_address"
            case BACnetPropertyIdentifier.network_interface_name => "network_interface_name"
            case BACnetPropertyIdentifier.network_number => "network_number"
            case BACnetPropertyIdentifier.network_number_quality => "network_number_quality"
            case BACnetPropertyIdentifier.network_type => "network_type"
            case BACnetPropertyIdentifier.routing_table => "routing_table"
            case BACnetPropertyIdentifier.virtual_mac_address_table => "virtual_mac_address_table"
            case BACnetPropertyIdentifier.command_time_array => "command_time_array"
            case BACnetPropertyIdentifier.current_command_priority => "current_command_priority"
            case BACnetPropertyIdentifier.last_command_time => "last_command_time"
            case BACnetPropertyIdentifier.value_source => "value_source"
            case BACnetPropertyIdentifier.value_source_array => "value_source_array"
            case BACnetPropertyIdentifier.bacnet_ipv6_mode => "bacnet_ipv6_mode"
            case BACnetPropertyIdentifier.ipv6_address => "ipv6_address"
            case BACnetPropertyIdentifier.ipv6_prefix_length => "ipv6_prefix_length"
            case BACnetPropertyIdentifier.bacnet_ipv6_udp_port => "bacnet_ipv6_udp_port"
            case BACnetPropertyIdentifier.ipv6_default_gateway => "ipv6_default_gateway"
            case BACnetPropertyIdentifier.bacnet_ipv6_multicast_address => "bacnet_ipv6_multicast_address"
            case BACnetPropertyIdentifier.ipv6_dns_server => "ipv6_dns_server"
            case BACnetPropertyIdentifier.ipv6_auto_addressing_enable => "ipv6_auto_addressing_enable"
            case BACnetPropertyIdentifier.ipv6_dhcp_lease_time => "ipv6_dhcp_lease_time"
            case BACnetPropertyIdentifier.ipv6_dhcp_lease_time_remaining => "ipv6_dhcp_lease_time_remaining"
            case BACnetPropertyIdentifier.ipv6_dhcp_server => "ipv6_dhcp_server"
            case BACnetPropertyIdentifier.ipv6_zone_index => "ipv6_zone_index"
            case BACnetPropertyIdentifier.assigned_landing_calls => "assigned_landing_calls"
            case BACnetPropertyIdentifier.car_assigned_direction => "car_assigned_direction"
            case BACnetPropertyIdentifier.car_door_command => "car_door_command"
            case BACnetPropertyIdentifier.car_door_status => "car_door_status"
            case BACnetPropertyIdentifier.car_door_text => "car_door_text"
            case BACnetPropertyIdentifier.car_door_zone => "car_door_zone"
            case BACnetPropertyIdentifier.car_drive_status => "car_drive_status"
            case BACnetPropertyIdentifier.car_load => "car_load"
            case BACnetPropertyIdentifier.car_load_units => "car_load_units"
            case BACnetPropertyIdentifier.car_mode => "car_mode"
            case BACnetPropertyIdentifier.car_moving_direction => "car_moving_direction"
            case BACnetPropertyIdentifier.car_position => "car_position"
            case BACnetPropertyIdentifier.elevator_group => "elevator_group"
            case BACnetPropertyIdentifier.energy_meter => "energy_meter"
            case BACnetPropertyIdentifier.energy_meter_ref => "energy_meter_ref"
            case BACnetPropertyIdentifier.escalator_mode => "escalator_mode"
            case BACnetPropertyIdentifier.fault_signals => "fault_signals"
            case BACnetPropertyIdentifier.floor_text => "floor_text"
            case BACnetPropertyIdentifier.group_id => "group_id"
            case BACnetPropertyIdentifier.group_mode => "group_mode"
            case BACnetPropertyIdentifier.higher_deck => "higher_deck"
            case BACnetPropertyIdentifier.installation_id => "installation_id"
            case BACnetPropertyIdentifier.landing_calls => "landing_calls"
            case BACnetPropertyIdentifier.landing_call_control => "landing_call_control"
            case BACnetPropertyIdentifier.landing_door_status => "landing_door_status"
            case BACnetPropertyIdentifier.lower_deck => "lower_deck"
            case BACnetPropertyIdentifier.machine_room_id => "machine_room_id"
            case BACnetPropertyIdentifier.making_car_call => "making_car_call"
            case BACnetPropertyIdentifier.next_stopping_floor => "next_stopping_floor"
            case BACnetPropertyIdentifier.operation_direction => "operation_direction"
            case BACnetPropertyIdentifier.passenger_alarm => "passenger_alarm"
            case BACnetPropertyIdentifier.power_mode => "power_mode"
            case BACnetPropertyIdentifier.registered_car_call => "registered_car_call"
            case BACnetPropertyIdentifier.active_cov_multiple_subscriptions => "active_cov_multiple_subscriptions"
            case BACnetPropertyIdentifier.protocol_level => "protocol_level"
            case BACnetPropertyIdentifier.reference_port => "reference_port"
            case BACnetPropertyIdentifier.deployed_profile_location => "deployed_profile_location"
            case BACnetPropertyIdentifier.profile_location => "profile_location"
            case BACnetPropertyIdentifier.tags => "tags"
            case BACnetPropertyIdentifier.subordinate_node_types => "subordinate_node_types"
            case BACnetPropertyIdentifier.subordinate_tags => "subordinate_tags"
            case BACnetPropertyIdentifier.subordinate_relationships => "subordinate_relationships"
            case BACnetPropertyIdentifier.default_subordinate_relationship => "default_subordinate_relationship"
            case BACnetPropertyIdentifier.represents => "represents"
            case BACnetPropertyIdentifier.default_present_value => "default_present_value"
            case BACnetPropertyIdentifier.present_stage => "present_stage"
            case BACnetPropertyIdentifier.stages => "stages"
            case BACnetPropertyIdentifier.stage_names => "stage_names"
            case BACnetPropertyIdentifier.target_references => "target_references"
            case BACnetPropertyIdentifier.audit_source_level => "audit_source_level"
            case BACnetPropertyIdentifier.audit_level => "audit_level"
            case BACnetPropertyIdentifier.audit_notification_recipient => "audit_notification_recipient"
            case BACnetPropertyIdentifier.audit_priority_filter => "audit_priority_filter"
            case BACnetPropertyIdentifier.auditable_operations => "auditable_operations"
            case BACnetPropertyIdentifier.delete_on_forward => "delete_on_forward"
            case BACnetPropertyIdentifier.maximum_send_delay => "maximum_send_delay"
            case BACnetPropertyIdentifier.monitored_objects => "monitored_objects"
            case BACnetPropertyIdentifier.send_now => "send_now"
            case BACnetPropertyIdentifier.floor_number => "floor_number"
            case BACnetPropertyIdentifier.device_uuid => "device_uuid"
            case BACnetPropertyIdentifier.reserved(x) => "reserved_${x}"
            case BACnetPropertyIdentifier.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): BACnetPropertyIdentifier {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "acked_transitions" => BACnetPropertyIdentifier.acked_transitions
            case "ack_required" => BACnetPropertyIdentifier.ack_required
            case "action" => BACnetPropertyIdentifier.action
            case "action_text" => BACnetPropertyIdentifier.action_text
            case "active_text" => BACnetPropertyIdentifier.active_text
            case "active_vt_sessions" => BACnetPropertyIdentifier.active_vt_sessions
            case "alarm_value" => BACnetPropertyIdentifier.alarm_value
            case "alarm_values" => BACnetPropertyIdentifier.alarm_values
            case "all" => BACnetPropertyIdentifier.all
            case "all_writes_successful" => BACnetPropertyIdentifier.all_writes_successful
            case "apdu_segment_timeout" => BACnetPropertyIdentifier.apdu_segment_timeout
            case "apdu_timeout" => BACnetPropertyIdentifier.apdu_timeout
            case "application_software_version" => BACnetPropertyIdentifier.application_software_version
            case "archive" => BACnetPropertyIdentifier.archive
            case "bias" => BACnetPropertyIdentifier.bias
            case "change_of_state_count" => BACnetPropertyIdentifier.change_of_state_count
            case "change_of_state_time" => BACnetPropertyIdentifier.change_of_state_time
            case "notification_class" => BACnetPropertyIdentifier.notification_class
            case "controlled_variable_reference" => BACnetPropertyIdentifier.controlled_variable_reference
            case "controlled_variable_units" => BACnetPropertyIdentifier.controlled_variable_units
            case "controlled_variable_value" => BACnetPropertyIdentifier.controlled_variable_value
            case "cov_increment" => BACnetPropertyIdentifier.cov_increment
            case "date_list" => BACnetPropertyIdentifier.date_list
            case "daylight_savings_status" => BACnetPropertyIdentifier.daylight_savings_status
            case "deadband" => BACnetPropertyIdentifier.deadband
            case "derivative_constant" => BACnetPropertyIdentifier.derivative_constant
            case "derivative_constant_units" => BACnetPropertyIdentifier.derivative_constant_units
            case "description" => BACnetPropertyIdentifier.description
            case "description_of_halt" => BACnetPropertyIdentifier.description_of_halt
            case "device_address_binding" => BACnetPropertyIdentifier.device_address_binding
            case "device_type" => BACnetPropertyIdentifier.device_type
            case "effective_period" => BACnetPropertyIdentifier.effective_period
            case "elapsed_active_time" => BACnetPropertyIdentifier.elapsed_active_time
            case "error_limit" => BACnetPropertyIdentifier.error_limit
            case "event_enable" => BACnetPropertyIdentifier.event_enable
            case "event_state" => BACnetPropertyIdentifier.event_state
            case "event_type" => BACnetPropertyIdentifier.event_type
            case "exception_schedule" => BACnetPropertyIdentifier.exception_schedule
            case "fault_values" => BACnetPropertyIdentifier.fault_values
            case "feedback_value" => BACnetPropertyIdentifier.feedback_value
            case "file_access_method" => BACnetPropertyIdentifier.file_access_method
            case "file_size" => BACnetPropertyIdentifier.file_size
            case "file_type" => BACnetPropertyIdentifier.file_type
            case "firmware_revision" => BACnetPropertyIdentifier.firmware_revision
            case "high_limit" => BACnetPropertyIdentifier.high_limit
            case "inactive_text" => BACnetPropertyIdentifier.inactive_text
            case "in_process" => BACnetPropertyIdentifier.in_process
            case "instance_of" => BACnetPropertyIdentifier.instance_of
            case "integral_constant" => BACnetPropertyIdentifier.integral_constant
            case "integral_constant_units" => BACnetPropertyIdentifier.integral_constant_units
            case "issue_confirmed_notifications" => BACnetPropertyIdentifier.issue_confirmed_notifications
            case "limit_enable" => BACnetPropertyIdentifier.limit_enable
            case "list_of_group_members" => BACnetPropertyIdentifier.list_of_group_members
            case "list_of_object_property_references" => BACnetPropertyIdentifier.list_of_object_property_references
            case "local_date" => BACnetPropertyIdentifier.local_date
            case "local_time" => BACnetPropertyIdentifier.local_time
            case "location" => BACnetPropertyIdentifier.location
            case "low_limit" => BACnetPropertyIdentifier.low_limit
            case "manipulated_variable_reference" => BACnetPropertyIdentifier.manipulated_variable_reference
            case "maximum_output" => BACnetPropertyIdentifier.maximum_output
            case "max_apdu_length_accepted" => BACnetPropertyIdentifier.max_apdu_length_accepted
            case "max_info_frames" => BACnetPropertyIdentifier.max_info_frames
            case "max_master" => BACnetPropertyIdentifier.max_master
            case "max_pres_value" => BACnetPropertyIdentifier.max_pres_value
            case "minimum_off_time" => BACnetPropertyIdentifier.minimum_off_time
            case "minimum_on_time" => BACnetPropertyIdentifier.minimum_on_time
            case "minimum_output" => BACnetPropertyIdentifier.minimum_output
            case "min_pres_value" => BACnetPropertyIdentifier.min_pres_value
            case "model_name" => BACnetPropertyIdentifier.model_name
            case "modification_date" => BACnetPropertyIdentifier.modification_date
            case "notify_type" => BACnetPropertyIdentifier.notify_type
            case "number_of_apdu_retries" => BACnetPropertyIdentifier.number_of_apdu_retries
            case "number_of_states" => BACnetPropertyIdentifier.number_of_states
            case "object_identifier" => BACnetPropertyIdentifier.object_identifier
            case "object_list" => BACnetPropertyIdentifier.object_list
            case "object_name" => BACnetPropertyIdentifier.object_name
            case "object_property_reference" => BACnetPropertyIdentifier.object_property_reference
            case "object_type" => BACnetPropertyIdentifier.object_type
            case "optional" => BACnetPropertyIdentifier.optional
            case "out_of_service" => BACnetPropertyIdentifier.out_of_service
            case "output_units" => BACnetPropertyIdentifier.output_units
            case "event_parameters" => BACnetPropertyIdentifier.event_parameters
            case "polarity" => BACnetPropertyIdentifier.polarity
            case "present_value" => BACnetPropertyIdentifier.present_value
            case "priority" => BACnetPropertyIdentifier.priority
            case "priority_array" => BACnetPropertyIdentifier.priority_array
            case "priority_for_writing" => BACnetPropertyIdentifier.priority_for_writing
            case "process_identifier" => BACnetPropertyIdentifier.process_identifier
            case "program_change" => BACnetPropertyIdentifier.program_change
            case "program_location" => BACnetPropertyIdentifier.program_location
            case "program_state" => BACnetPropertyIdentifier.program_state
            case "proportional_constant" => BACnetPropertyIdentifier.proportional_constant
            case "proportional_constant_units" => BACnetPropertyIdentifier.proportional_constant_units
            case "protocol_object_types_supported" => BACnetPropertyIdentifier.protocol_object_types_supported
            case "protocol_services_supported" => BACnetPropertyIdentifier.protocol_services_supported
            case "protocol_version" => BACnetPropertyIdentifier.protocol_version
            case "read_only" => BACnetPropertyIdentifier.read_only
            case "reason_for_halt" => BACnetPropertyIdentifier.reason_for_halt
            case "recipient_list" => BACnetPropertyIdentifier.recipient_list
            case "reliability" => BACnetPropertyIdentifier.reliability
            case "relinquish_default" => BACnetPropertyIdentifier.relinquish_default
            case "required" => BACnetPropertyIdentifier.required
            case "resolution" => BACnetPropertyIdentifier.resolution
            case "segmentation_supported" => BACnetPropertyIdentifier.segmentation_supported
            case "setpoint" => BACnetPropertyIdentifier.setpoint
            case "setpoint_reference" => BACnetPropertyIdentifier.setpoint_reference
            case "state_text" => BACnetPropertyIdentifier.state_text
            case "status_flags" => BACnetPropertyIdentifier.status_flags
            case "system_status" => BACnetPropertyIdentifier.system_status
            case "time_delay" => BACnetPropertyIdentifier.time_delay
            case "time_of_active_time_reset" => BACnetPropertyIdentifier.time_of_active_time_reset
            case "time_of_state_count_reset" => BACnetPropertyIdentifier.time_of_state_count_reset
            case "time_synchronization_recipients" => BACnetPropertyIdentifier.time_synchronization_recipients
            case "units" => BACnetPropertyIdentifier.units
            case "update_interval" => BACnetPropertyIdentifier.update_interval
            case "utc_offset" => BACnetPropertyIdentifier.utc_offset
            case "vendor_identifier" => BACnetPropertyIdentifier.vendor_identifier
            case "vendor_name" => BACnetPropertyIdentifier.vendor_name
            case "vt_classes_supported" => BACnetPropertyIdentifier.vt_classes_supported
            case "weekly_schedule" => BACnetPropertyIdentifier.weekly_schedule
            case "attempted_samples" => BACnetPropertyIdentifier.attempted_samples
            case "average_value" => BACnetPropertyIdentifier.average_value
            case "buffer_size" => BACnetPropertyIdentifier.buffer_size
            case "client_cov_increment" => BACnetPropertyIdentifier.client_cov_increment
            case "cov_resubscription_interval" => BACnetPropertyIdentifier.cov_resubscription_interval
            case "event_time_stamps" => BACnetPropertyIdentifier.event_time_stamps
            case "log_buffer" => BACnetPropertyIdentifier.log_buffer
            case "log_device_object_property" => BACnetPropertyIdentifier.log_device_object_property
            case "enable" => BACnetPropertyIdentifier.enable
            case "log_interval" => BACnetPropertyIdentifier.log_interval
            case "maximum_value" => BACnetPropertyIdentifier.maximum_value
            case "minimum_value" => BACnetPropertyIdentifier.minimum_value
            case "notification_threshold" => BACnetPropertyIdentifier.notification_threshold
            case "protocol_revision" => BACnetPropertyIdentifier.protocol_revision
            case "records_since_notification" => BACnetPropertyIdentifier.records_since_notification
            case "record_count" => BACnetPropertyIdentifier.record_count
            case "start_time" => BACnetPropertyIdentifier.start_time
            case "stop_time" => BACnetPropertyIdentifier.stop_time
            case "stop_when_full" => BACnetPropertyIdentifier.stop_when_full
            case "total_record_count" => BACnetPropertyIdentifier.total_record_count
            case "valid_samples" => BACnetPropertyIdentifier.valid_samples
            case "window_interval" => BACnetPropertyIdentifier.window_interval
            case "window_samples" => BACnetPropertyIdentifier.window_samples
            case "maximum_value_timestamp" => BACnetPropertyIdentifier.maximum_value_timestamp
            case "minimum_value_timestamp" => BACnetPropertyIdentifier.minimum_value_timestamp
            case "variance_value" => BACnetPropertyIdentifier.variance_value
            case "active_cov_subscriptions" => BACnetPropertyIdentifier.active_cov_subscriptions
            case "backup_failure_timeout" => BACnetPropertyIdentifier.backup_failure_timeout
            case "configuration_files" => BACnetPropertyIdentifier.configuration_files
            case "database_revision" => BACnetPropertyIdentifier.database_revision
            case "direct_reading" => BACnetPropertyIdentifier.direct_reading
            case "last_restore_time" => BACnetPropertyIdentifier.last_restore_time
            case "maintenance_required" => BACnetPropertyIdentifier.maintenance_required
            case "member_of" => BACnetPropertyIdentifier.member_of
            case "mode" => BACnetPropertyIdentifier.mode
            case "operation_expected" => BACnetPropertyIdentifier.operation_expected
            case "setting" => BACnetPropertyIdentifier.setting
            case "silenced" => BACnetPropertyIdentifier.silenced
            case "tracking_value" => BACnetPropertyIdentifier.tracking_value
            case "zone_members" => BACnetPropertyIdentifier.zone_members
            case "life_safety_alarm_values" => BACnetPropertyIdentifier.life_safety_alarm_values
            case "max_segments_accepted" => BACnetPropertyIdentifier.max_segments_accepted
            case "profile_name" => BACnetPropertyIdentifier.profile_name
            case "auto_slave_discovery" => BACnetPropertyIdentifier.auto_slave_discovery
            case "manual_slave_address_binding" => BACnetPropertyIdentifier.manual_slave_address_binding
            case "slave_address_binding" => BACnetPropertyIdentifier.slave_address_binding
            case "slave_proxy_enable" => BACnetPropertyIdentifier.slave_proxy_enable
            case "last_notify_record" => BACnetPropertyIdentifier.last_notify_record
            case "schedule_default" => BACnetPropertyIdentifier.schedule_default
            case "accepted_modes" => BACnetPropertyIdentifier.accepted_modes
            case "adjust_value" => BACnetPropertyIdentifier.adjust_value
            case "count" => BACnetPropertyIdentifier.count
            case "count_before_change" => BACnetPropertyIdentifier.count_before_change
            case "count_change_time" => BACnetPropertyIdentifier.count_change_time
            case "cov_period" => BACnetPropertyIdentifier.cov_period
            case "input_reference" => BACnetPropertyIdentifier.input_reference
            case "limit_monitoring_interval" => BACnetPropertyIdentifier.limit_monitoring_interval
            case "logging_object" => BACnetPropertyIdentifier.logging_object
            case "logging_record" => BACnetPropertyIdentifier.logging_record
            case "prescale" => BACnetPropertyIdentifier.prescale
            case "pulse_rate" => BACnetPropertyIdentifier.pulse_rate
            case "scale" => BACnetPropertyIdentifier.scale
            case "scale_factor" => BACnetPropertyIdentifier.scale_factor
            case "update_time" => BACnetPropertyIdentifier.update_time
            case "value_before_change" => BACnetPropertyIdentifier.value_before_change
            case "value_set" => BACnetPropertyIdentifier.value_set
            case "value_change_time" => BACnetPropertyIdentifier.value_change_time
            case "align_intervals" => BACnetPropertyIdentifier.align_intervals
            case "interval_offset" => BACnetPropertyIdentifier.interval_offset
            case "last_restart_reason" => BACnetPropertyIdentifier.last_restart_reason
            case "logging_type" => BACnetPropertyIdentifier.logging_type
            case "restart_notification_recipients" => BACnetPropertyIdentifier.restart_notification_recipients
            case "time_of_device_restart" => BACnetPropertyIdentifier.time_of_device_restart
            case "time_synchronization_interval" => BACnetPropertyIdentifier.time_synchronization_interval
            case "trigger" => BACnetPropertyIdentifier.trigger
            case "utc_time_synchronization_recipients" => BACnetPropertyIdentifier.utc_time_synchronization_recipients
            case "node_subtype" => BACnetPropertyIdentifier.node_subtype
            case "node_type" => BACnetPropertyIdentifier.node_type
            case "structured_object_list" => BACnetPropertyIdentifier.structured_object_list
            case "subordinate_annotations" => BACnetPropertyIdentifier.subordinate_annotations
            case "subordinate_list" => BACnetPropertyIdentifier.subordinate_list
            case "actual_shed_level" => BACnetPropertyIdentifier.actual_shed_level
            case "duty_window" => BACnetPropertyIdentifier.duty_window
            case "expected_shed_level" => BACnetPropertyIdentifier.expected_shed_level
            case "full_duty_baseline" => BACnetPropertyIdentifier.full_duty_baseline
            case "requested_shed_level" => BACnetPropertyIdentifier.requested_shed_level
            case "shed_duration" => BACnetPropertyIdentifier.shed_duration
            case "shed_level_descriptions" => BACnetPropertyIdentifier.shed_level_descriptions
            case "shed_levels" => BACnetPropertyIdentifier.shed_levels
            case "state_description" => BACnetPropertyIdentifier.state_description
            case "door_alarm_state" => BACnetPropertyIdentifier.door_alarm_state
            case "door_extended_pulse_time" => BACnetPropertyIdentifier.door_extended_pulse_time
            case "door_members" => BACnetPropertyIdentifier.door_members
            case "door_open_too_long_time" => BACnetPropertyIdentifier.door_open_too_long_time
            case "door_pulse_time" => BACnetPropertyIdentifier.door_pulse_time
            case "door_status" => BACnetPropertyIdentifier.door_status
            case "door_unlock_delay_time" => BACnetPropertyIdentifier.door_unlock_delay_time
            case "lock_status" => BACnetPropertyIdentifier.lock_status
            case "masked_alarm_values" => BACnetPropertyIdentifier.masked_alarm_values
            case "secured_status" => BACnetPropertyIdentifier.secured_status
            case "absentee_limit" => BACnetPropertyIdentifier.absentee_limit
            case "access_alarm_events" => BACnetPropertyIdentifier.access_alarm_events
            case "access_doors" => BACnetPropertyIdentifier.access_doors
            case "access_event" => BACnetPropertyIdentifier.access_event
            case "access_event_authentication_factor" => BACnetPropertyIdentifier.access_event_authentication_factor
            case "access_event_credential" => BACnetPropertyIdentifier.access_event_credential
            case "access_event_time" => BACnetPropertyIdentifier.access_event_time
            case "access_transaction_events" => BACnetPropertyIdentifier.access_transaction_events
            case "accompaniment" => BACnetPropertyIdentifier.accompaniment
            case "accompaniment_time" => BACnetPropertyIdentifier.accompaniment_time
            case "activation_time" => BACnetPropertyIdentifier.activation_time
            case "active_authentication_policy" => BACnetPropertyIdentifier.active_authentication_policy
            case "assigned_access_rights" => BACnetPropertyIdentifier.assigned_access_rights
            case "authentication_factors" => BACnetPropertyIdentifier.authentication_factors
            case "authentication_policy_list" => BACnetPropertyIdentifier.authentication_policy_list
            case "authentication_policy_names" => BACnetPropertyIdentifier.authentication_policy_names
            case "authentication_status" => BACnetPropertyIdentifier.authentication_status
            case "authorization_mode" => BACnetPropertyIdentifier.authorization_mode
            case "belongs_to" => BACnetPropertyIdentifier.belongs_to
            case "credential_disable" => BACnetPropertyIdentifier.credential_disable
            case "credential_status" => BACnetPropertyIdentifier.credential_status
            case "credentials" => BACnetPropertyIdentifier.credentials
            case "credentials_in_zone" => BACnetPropertyIdentifier.credentials_in_zone
            case "days_remaining" => BACnetPropertyIdentifier.days_remaining
            case "entry_points" => BACnetPropertyIdentifier.entry_points
            case "exit_points" => BACnetPropertyIdentifier.exit_points
            case "expiration_time" => BACnetPropertyIdentifier.expiration_time
            case "extended_time_enable" => BACnetPropertyIdentifier.extended_time_enable
            case "failed_attempt_events" => BACnetPropertyIdentifier.failed_attempt_events
            case "failed_attempts" => BACnetPropertyIdentifier.failed_attempts
            case "failed_attempts_time" => BACnetPropertyIdentifier.failed_attempts_time
            case "last_access_event" => BACnetPropertyIdentifier.last_access_event
            case "last_access_point" => BACnetPropertyIdentifier.last_access_point
            case "last_credential_added" => BACnetPropertyIdentifier.last_credential_added
            case "last_credential_added_time" => BACnetPropertyIdentifier.last_credential_added_time
            case "last_credential_removed" => BACnetPropertyIdentifier.last_credential_removed
            case "last_credential_removed_time" => BACnetPropertyIdentifier.last_credential_removed_time
            case "last_use_time" => BACnetPropertyIdentifier.last_use_time
            case "lockout" => BACnetPropertyIdentifier.lockout
            case "lockout_relinquish_time" => BACnetPropertyIdentifier.lockout_relinquish_time
            case "max_failed_attempts" => BACnetPropertyIdentifier.max_failed_attempts
            case "members" => BACnetPropertyIdentifier.members
            case "muster_point" => BACnetPropertyIdentifier.muster_point
            case "negative_access_rules" => BACnetPropertyIdentifier.negative_access_rules
            case "number_of_authentication_policies" => BACnetPropertyIdentifier.number_of_authentication_policies
            case "occupancy_count" => BACnetPropertyIdentifier.occupancy_count
            case "occupancy_count_adjust" => BACnetPropertyIdentifier.occupancy_count_adjust
            case "occupancy_count_enable" => BACnetPropertyIdentifier.occupancy_count_enable
            case "occupancy_lower_limit" => BACnetPropertyIdentifier.occupancy_lower_limit
            case "occupancy_lower_limit_enforced" => BACnetPropertyIdentifier.occupancy_lower_limit_enforced
            case "occupancy_state" => BACnetPropertyIdentifier.occupancy_state
            case "occupancy_upper_limit" => BACnetPropertyIdentifier.occupancy_upper_limit
            case "occupancy_upper_limit_enforced" => BACnetPropertyIdentifier.occupancy_upper_limit_enforced
            case "passback_mode" => BACnetPropertyIdentifier.passback_mode
            case "passback_timeout" => BACnetPropertyIdentifier.passback_timeout
            case "positive_access_rules" => BACnetPropertyIdentifier.positive_access_rules
            case "reason_for_disable" => BACnetPropertyIdentifier.reason_for_disable
            case "supported_formats" => BACnetPropertyIdentifier.supported_formats
            case "supported_format_classes" => BACnetPropertyIdentifier.supported_format_classes
            case "threat_authority" => BACnetPropertyIdentifier.threat_authority
            case "threat_level" => BACnetPropertyIdentifier.threat_level
            case "trace_flag" => BACnetPropertyIdentifier.trace_flag
            case "transaction_notification_class" => BACnetPropertyIdentifier.transaction_notification_class
            case "user_external_identifier" => BACnetPropertyIdentifier.user_external_identifier
            case "user_information_reference" => BACnetPropertyIdentifier.user_information_reference
            case "user_name" => BACnetPropertyIdentifier.user_name
            case "user_type" => BACnetPropertyIdentifier.user_type
            case "uses_remaining" => BACnetPropertyIdentifier.uses_remaining
            case "zone_from" => BACnetPropertyIdentifier.zone_from
            case "zone_to" => BACnetPropertyIdentifier.zone_to
            case "access_event_tag" => BACnetPropertyIdentifier.access_event_tag
            case "global_identifier" => BACnetPropertyIdentifier.global_identifier
            case "verification_time" => BACnetPropertyIdentifier.verification_time
            case "backup_and_restore_state" => BACnetPropertyIdentifier.backup_and_restore_state
            case "backup_preparation_time" => BACnetPropertyIdentifier.backup_preparation_time
            case "restore_completion_time" => BACnetPropertyIdentifier.restore_completion_time
            case "restore_preparation_time" => BACnetPropertyIdentifier.restore_preparation_time
            case "bit_mask" => BACnetPropertyIdentifier.bit_mask
            case "bit_text" => BACnetPropertyIdentifier.bit_text
            case "is_utc" => BACnetPropertyIdentifier.is_utc
            case "group_members" => BACnetPropertyIdentifier.group_members
            case "group_member_names" => BACnetPropertyIdentifier.group_member_names
            case "member_status_flags" => BACnetPropertyIdentifier.member_status_flags
            case "requested_update_interval" => BACnetPropertyIdentifier.requested_update_interval
            case "covu_period" => BACnetPropertyIdentifier.covu_period
            case "covu_recipients" => BACnetPropertyIdentifier.covu_recipients
            case "event_message_texts" => BACnetPropertyIdentifier.event_message_texts
            case "event_message_texts_config" => BACnetPropertyIdentifier.event_message_texts_config
            case "event_detection_enable" => BACnetPropertyIdentifier.event_detection_enable
            case "event_algorithm_inhibit" => BACnetPropertyIdentifier.event_algorithm_inhibit
            case "event_algorithm_inhibit_ref" => BACnetPropertyIdentifier.event_algorithm_inhibit_ref
            case "time_delay_normal" => BACnetPropertyIdentifier.time_delay_normal
            case "reliability_evaluation_inhibit" => BACnetPropertyIdentifier.reliability_evaluation_inhibit
            case "fault_parameters" => BACnetPropertyIdentifier.fault_parameters
            case "fault_type" => BACnetPropertyIdentifier.fault_type
            case "local_forwarding_only" => BACnetPropertyIdentifier.local_forwarding_only
            case "process_identifier_filter" => BACnetPropertyIdentifier.process_identifier_filter
            case "subscribed_recipients" => BACnetPropertyIdentifier.subscribed_recipients
            case "port_filter" => BACnetPropertyIdentifier.port_filter
            case "authorization_exemptions" => BACnetPropertyIdentifier.authorization_exemptions
            case "allow_group_delay_inhibit" => BACnetPropertyIdentifier.allow_group_delay_inhibit
            case "channel_number" => BACnetPropertyIdentifier.channel_number
            case "control_groups" => BACnetPropertyIdentifier.control_groups
            case "execution_delay" => BACnetPropertyIdentifier.execution_delay
            case "last_priority" => BACnetPropertyIdentifier.last_priority
            case "write_status" => BACnetPropertyIdentifier.write_status
            case "property_list" => BACnetPropertyIdentifier.property_list
            case "serial_number" => BACnetPropertyIdentifier.serial_number
            case "blink_warn_enable" => BACnetPropertyIdentifier.blink_warn_enable
            case "default_fade_time" => BACnetPropertyIdentifier.default_fade_time
            case "default_ramp_rate" => BACnetPropertyIdentifier.default_ramp_rate
            case "default_step_increment" => BACnetPropertyIdentifier.default_step_increment
            case "egress_time" => BACnetPropertyIdentifier.egress_time
            case "in_progress" => BACnetPropertyIdentifier.in_progress
            case "instantaneous_power" => BACnetPropertyIdentifier.instantaneous_power
            case "lighting_command" => BACnetPropertyIdentifier.lighting_command
            case "lighting_command_default_priority" => BACnetPropertyIdentifier.lighting_command_default_priority
            case "max_actual_value" => BACnetPropertyIdentifier.max_actual_value
            case "min_actual_value" => BACnetPropertyIdentifier.min_actual_value
            case "power" => BACnetPropertyIdentifier.power
            case "transition" => BACnetPropertyIdentifier.transition
            case "egress_active" => BACnetPropertyIdentifier.egress_active
            case "interface_value" => BACnetPropertyIdentifier.interface_value
            case "fault_high_limit" => BACnetPropertyIdentifier.fault_high_limit
            case "fault_low_limit" => BACnetPropertyIdentifier.fault_low_limit
            case "low_diff_limit" => BACnetPropertyIdentifier.low_diff_limit
            case "strike_count" => BACnetPropertyIdentifier.strike_count
            case "time_of_strike_count_reset" => BACnetPropertyIdentifier.time_of_strike_count_reset
            case "default_timeout" => BACnetPropertyIdentifier.default_timeout
            case "initial_timeout" => BACnetPropertyIdentifier.initial_timeout
            case "last_state_change" => BACnetPropertyIdentifier.last_state_change
            case "state_change_values" => BACnetPropertyIdentifier.state_change_values
            case "timer_running" => BACnetPropertyIdentifier.timer_running
            case "timer_state" => BACnetPropertyIdentifier.timer_state
            case "apdu_length" => BACnetPropertyIdentifier.apdu_length
            case "ip_address" => BACnetPropertyIdentifier.ip_address
            case "ip_default_gateway" => BACnetPropertyIdentifier.ip_default_gateway
            case "ip_dhcp_enable" => BACnetPropertyIdentifier.ip_dhcp_enable
            case "ip_dhcp_lease_time" => BACnetPropertyIdentifier.ip_dhcp_lease_time
            case "ip_dhcp_lease_time_remaining" => BACnetPropertyIdentifier.ip_dhcp_lease_time_remaining
            case "ip_dhcp_server" => BACnetPropertyIdentifier.ip_dhcp_server
            case "ip_dns_server" => BACnetPropertyIdentifier.ip_dns_server
            case "bacnet_ip_global_address" => BACnetPropertyIdentifier.bacnet_ip_global_address
            case "bacnet_ip_mode" => BACnetPropertyIdentifier.bacnet_ip_mode
            case "bacnet_ip_multicast_address" => BACnetPropertyIdentifier.bacnet_ip_multicast_address
            case "bacnet_ip_nat_traversal" => BACnetPropertyIdentifier.bacnet_ip_nat_traversal
            case "ip_subnet_mask" => BACnetPropertyIdentifier.ip_subnet_mask
            case "bacnet_ip_udp_port" => BACnetPropertyIdentifier.bacnet_ip_udp_port
            case "bbmd_accept_fd_registrations" => BACnetPropertyIdentifier.bbmd_accept_fd_registrations
            case "bbmd_broadcast_distribution_table" => BACnetPropertyIdentifier.bbmd_broadcast_distribution_table
            case "bbmd_foreign_device_table" => BACnetPropertyIdentifier.bbmd_foreign_device_table
            case "changes_pending" => BACnetPropertyIdentifier.changes_pending
            case "command" => BACnetPropertyIdentifier.command
            case "fd_bbmd_address" => BACnetPropertyIdentifier.fd_bbmd_address
            case "fd_subscription_lifetime" => BACnetPropertyIdentifier.fd_subscription_lifetime
            case "link_speed" => BACnetPropertyIdentifier.link_speed
            case "link_speeds" => BACnetPropertyIdentifier.link_speeds
            case "link_speed_autonegotiate" => BACnetPropertyIdentifier.link_speed_autonegotiate
            case "mac_address" => BACnetPropertyIdentifier.mac_address
            case "network_interface_name" => BACnetPropertyIdentifier.network_interface_name
            case "network_number" => BACnetPropertyIdentifier.network_number
            case "network_number_quality" => BACnetPropertyIdentifier.network_number_quality
            case "network_type" => BACnetPropertyIdentifier.network_type
            case "routing_table" => BACnetPropertyIdentifier.routing_table
            case "virtual_mac_address_table" => BACnetPropertyIdentifier.virtual_mac_address_table
            case "command_time_array" => BACnetPropertyIdentifier.command_time_array
            case "current_command_priority" => BACnetPropertyIdentifier.current_command_priority
            case "last_command_time" => BACnetPropertyIdentifier.last_command_time
            case "value_source" => BACnetPropertyIdentifier.value_source
            case "value_source_array" => BACnetPropertyIdentifier.value_source_array
            case "bacnet_ipv6_mode" => BACnetPropertyIdentifier.bacnet_ipv6_mode
            case "ipv6_address" => BACnetPropertyIdentifier.ipv6_address
            case "ipv6_prefix_length" => BACnetPropertyIdentifier.ipv6_prefix_length
            case "bacnet_ipv6_udp_port" => BACnetPropertyIdentifier.bacnet_ipv6_udp_port
            case "ipv6_default_gateway" => BACnetPropertyIdentifier.ipv6_default_gateway
            case "bacnet_ipv6_multicast_address" => BACnetPropertyIdentifier.bacnet_ipv6_multicast_address
            case "ipv6_dns_server" => BACnetPropertyIdentifier.ipv6_dns_server
            case "ipv6_auto_addressing_enable" => BACnetPropertyIdentifier.ipv6_auto_addressing_enable
            case "ipv6_dhcp_lease_time" => BACnetPropertyIdentifier.ipv6_dhcp_lease_time
            case "ipv6_dhcp_lease_time_remaining" => BACnetPropertyIdentifier.ipv6_dhcp_lease_time_remaining
            case "ipv6_dhcp_server" => BACnetPropertyIdentifier.ipv6_dhcp_server
            case "ipv6_zone_index" => BACnetPropertyIdentifier.ipv6_zone_index
            case "assigned_landing_calls" => BACnetPropertyIdentifier.assigned_landing_calls
            case "car_assigned_direction" => BACnetPropertyIdentifier.car_assigned_direction
            case "car_door_command" => BACnetPropertyIdentifier.car_door_command
            case "car_door_status" => BACnetPropertyIdentifier.car_door_status
            case "car_door_text" => BACnetPropertyIdentifier.car_door_text
            case "car_door_zone" => BACnetPropertyIdentifier.car_door_zone
            case "car_drive_status" => BACnetPropertyIdentifier.car_drive_status
            case "car_load" => BACnetPropertyIdentifier.car_load
            case "car_load_units" => BACnetPropertyIdentifier.car_load_units
            case "car_mode" => BACnetPropertyIdentifier.car_mode
            case "car_moving_direction" => BACnetPropertyIdentifier.car_moving_direction
            case "car_position" => BACnetPropertyIdentifier.car_position
            case "elevator_group" => BACnetPropertyIdentifier.elevator_group
            case "energy_meter" => BACnetPropertyIdentifier.energy_meter
            case "energy_meter_ref" => BACnetPropertyIdentifier.energy_meter_ref
            case "escalator_mode" => BACnetPropertyIdentifier.escalator_mode
            case "fault_signals" => BACnetPropertyIdentifier.fault_signals
            case "floor_text" => BACnetPropertyIdentifier.floor_text
            case "group_id" => BACnetPropertyIdentifier.group_id
            case "group_mode" => BACnetPropertyIdentifier.group_mode
            case "higher_deck" => BACnetPropertyIdentifier.higher_deck
            case "installation_id" => BACnetPropertyIdentifier.installation_id
            case "landing_calls" => BACnetPropertyIdentifier.landing_calls
            case "landing_call_control" => BACnetPropertyIdentifier.landing_call_control
            case "landing_door_status" => BACnetPropertyIdentifier.landing_door_status
            case "lower_deck" => BACnetPropertyIdentifier.lower_deck
            case "machine_room_id" => BACnetPropertyIdentifier.machine_room_id
            case "making_car_call" => BACnetPropertyIdentifier.making_car_call
            case "next_stopping_floor" => BACnetPropertyIdentifier.next_stopping_floor
            case "operation_direction" => BACnetPropertyIdentifier.operation_direction
            case "passenger_alarm" => BACnetPropertyIdentifier.passenger_alarm
            case "power_mode" => BACnetPropertyIdentifier.power_mode
            case "registered_car_call" => BACnetPropertyIdentifier.registered_car_call
            case "active_cov_multiple_subscriptions" => BACnetPropertyIdentifier.active_cov_multiple_subscriptions
            case "protocol_level" => BACnetPropertyIdentifier.protocol_level
            case "reference_port" => BACnetPropertyIdentifier.reference_port
            case "deployed_profile_location" => BACnetPropertyIdentifier.deployed_profile_location
            case "profile_location" => BACnetPropertyIdentifier.profile_location
            case "tags" => BACnetPropertyIdentifier.tags
            case "subordinate_node_types" => BACnetPropertyIdentifier.subordinate_node_types
            case "subordinate_tags" => BACnetPropertyIdentifier.subordinate_tags
            case "subordinate_relationships" => BACnetPropertyIdentifier.subordinate_relationships
            case "default_subordinate_relationship" => BACnetPropertyIdentifier.default_subordinate_relationship
            case "represents" => BACnetPropertyIdentifier.represents
            case "default_present_value" => BACnetPropertyIdentifier.default_present_value
            case "present_stage" => BACnetPropertyIdentifier.present_stage
            case "stages" => BACnetPropertyIdentifier.stages
            case "stage_names" => BACnetPropertyIdentifier.stage_names
            case "target_references" => BACnetPropertyIdentifier.target_references
            case "audit_source_level" => BACnetPropertyIdentifier.audit_source_level
            case "audit_level" => BACnetPropertyIdentifier.audit_level
            case "audit_notification_recipient" => BACnetPropertyIdentifier.audit_notification_recipient
            case "audit_priority_filter" => BACnetPropertyIdentifier.audit_priority_filter
            case "auditable_operations" => BACnetPropertyIdentifier.auditable_operations
            case "delete_on_forward" => BACnetPropertyIdentifier.delete_on_forward
            case "maximum_send_delay" => BACnetPropertyIdentifier.maximum_send_delay
            case "monitored_objects" => BACnetPropertyIdentifier.monitored_objects
            case "send_now" => BACnetPropertyIdentifier.send_now
            case "floor_number" => BACnetPropertyIdentifier.floor_number
            case "device_uuid" => BACnetPropertyIdentifier.device_uuid
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw BACnetEncodeError("转换错误.输入字符串为无效属性标识符标签")
                        case Some(x) where x > 511 => throw BACnetEncodeError("转换错误.输入字符串为无效属性标识符标签")
                        case Some(x) => BACnetPropertyIdentifier.reserved(x)
                    }
                } catch (e: Exception) {
                    throw BACnetEncodeError("转换错误.输入字符串为无效属性标识符标签")
                }
            case _sn where _sn.startsWith("non_standardized_") =>
                let _numStr = _sn.removePrefix("non_standardized_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw BACnetEncodeError("转换错误.输入字符串为无效属性标识符标签")
                        case Some(x) where x < 512 || x > 4194303 => throw BACnetEncodeError("转换错误.输入字符串为无效属性标识符标签")
                        case Some(x) => BACnetPropertyIdentifier.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw BACnetEncodeError("转换错误.输入字符串为无效属性标识符标签")
                }
            case _ => throw BACnetEncodeError("转换错误.输入字符串为无效属性标识符标签")
        }
    }
}
