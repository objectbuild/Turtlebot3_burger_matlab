function around_object2(minDist, robot_pub) 
    if minDist < 0.5
        disp("Avoid.......")
        if minDist1 < minDist2
            stop_mission(robot_pub);
            [velocity_msg]= generate_msgs(0, 0.2, robot_pub);
            send_msgs(velocity_msg, robot_pub);
            tic;
            while toc < 6.5
%                 send_msgs(velocity_msg, robot_pub);
                disp("Turn right....");
            end
            stop_mission(robot_pub);
            
            disp("wait for 5 seconds");
%             pause(5);
            
            [velocity_msg]= generate_msgs(0.1, 0, robot_pub);
            send_msgs(velocity_msg, robot_pub);
            tic;
            while toc < 4
%             send_msgs(velocity_msg, robot_pub);
            disp("go forward ......");
            end
            
            stop_mission(robot_pub);
            disp("wait for 5 seconds");
%             pause(5);
            
            [velocity_msg]= generate_msgs(0, -0.2, robot_pub);
            send_msgs(velocity_msg, robot_pub);
            tic;
            while toc < 6.5
%                 send_msgs(velocity_msg, robot_pub);
                disp("Turn left....");
            end
            stop_mission(robot_pub);
            
            disp("wait for 5 seconds");
%             pause(5);
            
        else
             stop_mission(robot_pub);
            [velocity_msg]= generate_msgs(0, -0.2, robot_pub);
            send_msgs(velocity_msg, robot_pub);
            tic;
            while toc < 6.5
%                 send_msgs(velocity_msg, robot_pub);
                disp("Turn left....");
            end
            stop_mission(robot_pub);
            
            disp("wait for 5 seconds");
%             pause(5);
            
            [velocity_msg]= generate_msgs(0.1, 0, robot_pub);   
            send_msgs(velocity_msg, robot_pub);
            tic;
            while toc < 4
%             send_msgs(velocity_msg, robot_pub);
            disp("go forward ......");
            end
            stop_mission(robot_pub);
            disp("wait for 5 seconds");
%             pause(5);
            
            [velocity_msg]= generate_msgs(0, 0.2, robot_pub);
            send_msgs(velocity_msg, robot_pub);
            tic;
            while toc < 6.5
%                 send_msgs(velocity_msg, robot_pub);
                disp("Turn right....");
            end
            stop_mission(robot_pub); 
            disp("wait for 5 seconds");
%             pause(5);
        end
    else
%        [velocity_msg]= generate_msgs(0.1, 0, robot_pub);
%        send_msgs(velocity_msg, robot_pub); 
       stop_mission(robot_pub);
       disp("Stop")
    end
end