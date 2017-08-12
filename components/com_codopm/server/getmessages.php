<?php

/**
 * @package Component codoPM for Joomla! 3.0
 * @author codologic
 * @copyright (C) 2013 - codologic
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

defined('_JEXEC') or die;

function get_message_count($owner_id) {

    $query = "SELECT 
        COUNT(id) AS count
FROM codopm_messages AS m
INNER JOIN
(
SELECT thread_hash, MAX(time) AS newest
   FROM codopm_messages
   WHERE owner=:owner_id
   GROUP BY thread_hash
 )AS m2  ON m.time = m2.newest
        AND m.thread_hash  = m2.thread_hash
WHERE owner=:owner_id";

    $obj = pexecute($query, array(':owner_id' => $owner_id));
    return $obj->fetchAll();
}

function get_messages($owner_id, $offset = 1) {

    //mysql limit starts from 0
    if($offset != 0 ) --$offset;
    
    $query = "SELECT 
  m.msg_from_name,
  m.msg_from,
  m.msg_to,
  m.msg_to_name,
  m.recd,
  m.time, 
  m.message
  FROM codopm_messages AS m
INNER JOIN
(
SELECT thread_hash, MAX(time) AS newest
   FROM codopm_messages
   WHERE owner=:owner_id
   GROUP BY thread_hash
 )AS m2  ON m.time = m2.newest
        AND m.thread_hash  = m2.thread_hash
WHERE owner=:owner_id
ORDER BY m.time DESC LIMIT $offset," . codopm::$config['msgs_per_page'];

    $obj = pexecute($query, array(':owner_id' => $owner_id));
    return $obj->fetchAll();
}

function get_conversations($to_id, $from_id, $owner, $limit, $offset = 0) {
    
    $query = "SELECT id as msg_id, msg_from_name, msg_to_name, msg_from, time, message, attachments
                FROM codopm_messages WHERE 
                   ( 
                     (msg_from = :from AND msg_to = :to)
                      OR (msg_from = :to AND msg_to = :from)
                    )
                    AND owner= :owner_id
                 ORDER BY time DESC LIMIT $offset, $limit";

    $obj = pexecute($query, array(":from" => $from_id, ":to" => $to_id, ":owner_id" => $owner));

    $res = array(
        "count" => $obj->rowCount(),
        "conversations" => $obj->fetchAll()
    );

    return $res;
}

function delete_conversation($id) {

    $id = (int) $id;

    $query = "DELETE FROM codopm_messages WHERE id=$id";
    codopm::$db->query($query);
}

function set_message_read($to_id, $from_id, $owner_id) {

    $query = "UPDATE codopm_messages SET recd = 1
                WHERE owner=:owner_id AND
                 ( (msg_from = :from AND msg_to = :to)
                  OR (msg_from = :to AND msg_to = :from) )";

    pexecute($query, array(":from" => $from_id, ":to" => $to_id, ":owner_id" => $owner_id));
}
