-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('参数配置', '3', '1', 'config', 'system/config/index', 1, 'C', '0', '0', 'system:config:list', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '参数配置菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('参数配置查询', @parentId, '1',  '#', '', 1,  'F', '0',  '0', 'system:config:query',        '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('参数配置新增', @parentId, '2',  '#', '', 1,  'F', '0',  '0', 'system:config:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('参数配置修改', @parentId, '3',  '#', '', 1,  'F', '0',  '0', 'system:config:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('参数配置删除', @parentId, '4',  '#', '', 1,  'F', '0',  '0', 'system:config:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('参数配置导出', @parentId, '5',  '#', '', 1,  'F', '0',  '0', 'system:config:export',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');