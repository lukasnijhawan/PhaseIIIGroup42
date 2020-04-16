-- Query # 2




-- Query #17
CALL mn_filter_foodTruck(
    'Manager1',
    'CrazyPies',
    'Campanile',
    NULL,

    NULL,
    TRUE);

SELECT * FROM mn_filter_foodTruck_result;

CALL mn_filter_foodTruck(
    'Manager2',
    NULL,
    'Bio Quad',
    0,

    20,
    FALSE);

SELECT * FROM mn_filter_foodTruck_result;

CALL mn_filter_foodTruck(
    'Manager2',
    '',
    'Bio Quad',
    NULL,

    NULL,
    TRUE);

SELECT * FROM mn_filter_foodTruck_result;

-- Query #18
CALL mn_delete_foodTruck('FusionFoodTruck');

CALL mn_delete_foodTruck(NULL);

-- Query #19a
CALL mn_create_foodTruck_add_station('GoodOnAStudentBudget', 'Bio Quad', 'Manager1');

CALL mn_create_foodTruck_add_station('madeup', 'Skiles Walkway', 'Manager1');

-- Query #19b
CALL mn_create_foodTruck_add_staff('GoodOnAStudentBudget', 'employee1');

CALL mn_create_foodTruck_add_staff('FoodTrolley','employee1');


-- Query #19c
CALL mn_create_foodTruck_add_menu_item('FoodTrolley', 400.00, 'Pie');

CALL mn_create_foodTruck_add_menu_item('madeup',NULL,'ChickenTacos');

CALL mn_create_foodTruck_add_menu_item('GoodOnAStudentBudget', 'ElkBurger',-4.99);


-- Query #20a
CALL mn_view_foodTruck_available_staff('billy');

CALL mn_view_foodTruck_available_staff('GoodOnAStudentBudget');


-- Query #20b
CALL mn_view_foodTruck_staff(NULL);
SELECT * FROM mn_view_foodTruck_staff_result;

CALL mn_view_foodTruck_staff('FoodTrolley');
SELECT * FROM mn_view_foodTruck_staff_result;

CALL mn_view_foodTruck_staff('GoodOnAStudentBudget');
SELECT * FROM mn_view_foodTruck_staff_result;

-- Query #21
CALL mn_view_foodTruck_menu('madeupfoodtruck');
SELECT * FROM mn_view_foodTruck_menu_result;

CALL mn_view_foodTruck_menu('GoodOnAStudentBudget');
SELECT * FROM mn_view_foodTruck_menu_result;


-- Query #22a
CALL mn_update_foodTruck_station('GoodOnAStudentBudget', 'Skiles Walkway');

CALL mn_update_foodTruck_station('madeupfoodtruck',NULL);

CALL mn_update_foodTruck_station('GoodOnAStudentBudget', NULL);

--- Query #22b
CALL mn_update_foodTruck_staff('FoodTrolley','SriLuigi');

CALL mn_update_foodTruck_staff('Madeupfoodtruck','employee1');

CALL mn_update_foodTruck_staff('FoodTrolley','employee1');


-- Query #22c
CALL mn_update_foodTruck_menu_item('GoodOnAStudentBudget', 200.00, 'ElkBurger');

CALL mn_update_foodTruck_menu_item('GoodOnAStudentBudget', 200.00,'Cheeseburger');

CALL mn_update_foodTruck_menu_item('GoodOnAStudentBudget', -3.00, 'ChickenTacos');

-- Query #23
CALL mn_get_station('LadyVader1977');
SELECT * FROM mn_get_station_result;

CALL mn_get_station('lukas');
SELECT * FROM mn_get_station_result;

CALL mn_get_station(NULL);
SELECT * FROM mn_get_station_result;

-- Query #24
CALL mn_filter_summary(
    'Manager1',
    NULL,
    NULL,
    NULL,
    NULL,
    'totalRevenue',
    'ASC');
 SELECT * FROM mn_filter_summary_result;
 
 CALL mn_filter_summary(
    'Manager1',
    'CrazyPies',
    'Campanile',
    NULL,
    NULL,
    NULL,
    NULL);
 SELECT * FROM mn_filter_summary_result;
 
 CALL mn_filter_summary(
    'Manager2',
    NULL,
    'C',
    NULL,
    NULL,
    NULL,
    NULL);
 SELECT * FROM mn_filter_summary_result;
 


-- Query #25
CALL mn_summary_detail('LadyVader1977', NULL);
SELECT * FROM mn_summary_detail_result;

CALL mn_summary_detail('LadyVader1977', 'FoodTruckYoureLookingFor');
SELECT * FROM mn_summary_detail_result;

-- Query #26
CALL cus_filter_explore('Skiles', NULL, '', '', '');
SELECT * FROM cus_filter_explore_result;

CALL cus_filter_explore(NULL, 'Campanile', '', 'BubbaGumps', '');
SELECT * FROM cus_filter_explore_result;

CALL cus_filter_explore('Skiles', 'Skiles Walkway', '', '', 'Waf');
SELECT * FROM cus_filter_explore_result;


-- Query #27
CALL cus_select_location('beBatman!', 'Skiles Walkway');

CALL cus_select_location('beBatman!', NULL);

CALL cus_select_location('elnij', 'Clough Commons');

-- Query #28
CALL cus_current_information_basic('customer1');
SELECT * FROM cus_current_information_basic_result;

CALL cus_current_information_basic(NULL);
SELECT * FROM cus_current_information_basic_result;

CALL cus_current_information_basic('lukasnij');
SELECT * FROM cus_current_information_basic_result;

CALL cus_current_information_basic('beBatman!');
SELECT * FROM cus_current_information_basic_result;

-- Query #29
CALL cus_current_information_foodTruck('customer1');
SELECT * FROM cus_current_information_foodTruck_result;

CALL cus_current_information_foodTruck(NULL);
SELECT * FROM cus_current_information_foodTruck_result;

CALL cus_current_information_foodTruck('lukasnijhawan');
SELECT * FROM cus_current_information_foodTruck_result;

CALL cus_current_information_foodTruck('beBatman!');
SELECT * FROM cus_current_information_foodTruck_result;


-- Query #30
CALL cus_order(NULL, 'customer1');

CALL cus_order(TO_DATE('12-17-2020', 'MM-DD-YYYY'),'LifeUniverseEverything');

-- Query #31
CALL cus_add_item_to_order('NachoBizness', 'ChickenTacos', 2, 1);

CALL cus_add_item_to_order('CrazyPies', 'ElkBurger', 1, 5);

CALL cus_add_item_to_order('GoodOnAStudentBudget', NULL, 5, 2);

CALL cus_add_item_to_order('FoodTrolley', 'Pie', -4, 4);


-- Query #32

CALL cus_order_history('customer1');
SELECT * from cus_order_history_result;

CALL cus_order_history('lukasnijhawan');
SELECT * from cus_order_history_result;

CALL cus_order_history(NULL);
SELECT * from cus_order_history_result;

CALL cus_order_history('RRanskans');
SELECT * from cus_order_history_result;
