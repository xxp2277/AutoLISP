mold1 : dialog {
    label     = "��ѡ��ģ��";
    spacer_0;
    : column {
     : row {
        : edit_box {
           label        ="������";
           key          ="order";
           alinment     =bottom;}
      }
     : radio_row {
        key         = "gate";
        : text {
            label       = "��ѡ��ģ������:";
            fix_height  = ture;
            width       = 15;}
        : radio_button {
            label       = "��ˮ��";
            key         = "sgate";
            alignment   = bottom;}
        : radio_button {
	    label       = "ϸˮ��";
            key         = "ppgate";
            alignment   = bottom;}
        : radio_button {
            label       = "����ϸˮ��";
            key         = "tptype";
            alignment   = bottom;}
        } 
     : row {
        : edit_box {
           label        = "ģ�߻�������:";
           key          = "plat_num";
           edit_width   = 5;
           fixed_width  = true;}
        : toggle {
           label        = "�Ƿ������ж�?";
           key          = "egp_yn";
           fixed_width  = true;}
     }
     : row {
        : edit_box {
           label        = "��  ˾  ��  ��:";
           key          = "gp_num";
           width        = 2;
           fixed_width  = true;}
        : edit_box {
           label        = "ֱ  ˾  ��  ��:";
           key          = "sgp_num";
           width        = 2;
           fixed_width  = true;}
     }
     : row {
        : edit_box {
           label        = "��ģ��ͷ����:";
           key          = "tshcs_num";
           width        = 2;
           fixed_width  = true;}
        : edit_box {
           label        = "��ģ��ͷ����:";
           key          = "bshcs_num";
           width        = 2;
           fixed_width  = true;}
     }
     : row {
        : button {
           label        = "ģ��";
           key          = "plat";
           fixed_width  = true;}
        : button {
           label        = "���";
           key          = "part";
           fixed_width  = true;}
        ok_cancel;
     }
    }
}
mold2_1 : dialog {
     label       = "ģ�����.....";
     : column {
       : row {
          : text {
             label          = "(1)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h1";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w1";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l1";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(2)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h2";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w2";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l2";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(3)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h3";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w3";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l3";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(4)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h4";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w4";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "����:";
             key            = "plat_l4";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(5)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h5";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w5";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l5";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(6)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h6";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w6";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l6";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(7)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h7";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w7";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l7";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(8)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h8";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w8";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l8";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(9)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h9";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w9";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l9";
             fixed_width    = true;
             edit_width     = 5;}
       }
    }
       : row {
          spacer_1;
          : button {
           label        = "���";
           key          = "part";
           fixed_width  = true;}
          ok_only;
          spacer_1;
       }
 }

mold2_2 : dialog {
     label       = "ģ�����.....";
     : column {
       : row {
          : text {
             label          = "(1)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h1";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w1";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l1";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(2)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h2";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w2";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l2";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(3)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h3";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w3";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l3";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(4)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h4";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w4";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l4";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(5)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h5";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w5";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l5";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(6)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h6";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w6";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l6";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(7)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h7";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w7";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l7";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(8)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h8";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w8";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l8";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(9)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h9";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w9";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l9";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(10)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h10";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w10";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l10";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(11)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h11";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w11";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l11";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(12)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h12";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w12";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l12";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(13)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h13";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w13";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l13";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(14)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h14";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w14";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l14";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          : text {
             label          = "(15)��ĺ񣬿�����:";
             fixed_width    = true;
             width          = 15;}
          : edit_box {
             label          = "���:";
             key            = "plat_h15";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "���:";
             key            = "plat_w15";
             fixed_width    = true;
             edit_width     = 5;}
          : edit_box {
             label          = "�峤:";
             key            = "plat_l15";
             fixed_width    = true;
             edit_width     = 5;}
       }
       : row {
          spacer_1;
          : button {
             label        = "���";
             key          = "part";
             alignment    = centered;
             fixed_width  = true;}
          ok_only;
          spacer_1;
       }
    }
 }

mold3 : dialog {
  label          = "�������.....";
    : column {
      : row {
        : boxed_column {
          label        = "ֱ     ��:";
          : edit_box {
             label        = "��С:";
             key          = "gb1_dia";
             edit_width   = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "����:";
             key          = "gb1_len";
 	     edit_width	  = 4;
             fixed_width  = true;}
          : edit_box  {
             label        = "���:";
             key          = "gb1_plat";
             edit_width   = 4;
             fixed_width  = true;}
          : radio_column {
            key          = "ina_b";
            : radio_button {
              label        = "ֱ������ģ";
              key          = "in_a";
              fixed_width  = true;}
            : radio_button {
              label        = "ֱ������ģ";
              key          = "in_b";
              fixed_width  = true;}
          }
        }
        : boxed_column {
          label        = "ˮ   ��   ��:";
          : edit_box {
             label       = "��С:";
             key         = "sp_dia";
             edit_width	  = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "����:";
             key          = "sp_len";
 	     edit_width	  = 4;
             fixed_width  = true;}
          : edit_box  {
             label        = "���:";
             key          = "sp_plat";
             edit_width   = 4;
             fixed_width  = true;}
        }
        : boxed_column {
          label        = "��һ����˾";
          : edit_box  {
             label        = "��С:";
             key          = "gp1_dia";
	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box  { 
             label        = "����:";
             key          = "gp1_len";
	     edit_width	  = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "���:";
             key          = "gp1_plat";
 	     edit_width   = 4;
             fixed_width  = true;}
          : radio_column {
             key          = "gp1_drct";
             : radio_button {
                label        = "����";
                key          = "gp1_t";
                fixed_width  = true;}
             : radio_button {
                label        = "����";
                key          = "gp1_b";
                fixed_width  = true;}
          }
        }
        : boxed_column {
          label        = "�ڶ�����˾";
          : edit_box  {
             label        = "��С:";
             key          = "gp2_dia";
	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box  { 
             label        = "����:";
             key          = "gp2_len";
 	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "���:";
             key          = "gp2_plat";
 	     edit_width   = 4;
             fixed_width  = true;}
          : radio_column {
             key          = "gp2_drct";
             : radio_button {
                label        = "����";
                key          = "gp2_t";
                fixed_width  = true;}
             : radio_button {
                label        = "����";
                key          = "gp2_b";
                fixed_width  = true;}
          }
        }
        : boxed_column {
          label        = "��һ��ֱ˾";
          : edit_box  {
             label        = "��С:";
             key          = "sgp1_dia";
	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box  { 
             label        = "����:";
             key          = "sgp1_len";
 	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "���:";
             key          = "sgp1_plat";
 	     edit_width   = 4;
             fixed_width  = true;}
          : radio_column {
             key          = "sgp1_com";
             : radio_button {
                label        = "��ֱ��";
                key          = "in_gb1";
                fixed_width  = true;}
             : radio_button {
                label        = "��ˮ�ڱ�";
                key          = "in_sp1";
                fixed_width  = true;}
          } 
        }
      }
      : row {
        : boxed_column {
          label        = "�ڶ���ֱ˾";
          : edit_box  {
             label        = "��С:";
             key          = "sgp2_dia";
	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box  { 
             label        = "����:";
             key          = "sgp2_len";
 	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "���:";
             key          = "sgp2_plat";
 	     edit_width   = 4;
             fixed_width  = true;}
          : radio_column {
             key          = "sgp2_com";
             : radio_button {
                label        = "��ֱ��";
                key          = "in_gb2";
                fixed_width  = true;}
             : radio_button {
                label        = "��ˮ�ڱ�";
                key          = "in_sp2";
                fixed_width  = true;}
          } 
        }
        : boxed_column {
          label        = "������ֱ˾";
          : edit_box  {
             label        = "��С:";
             key          = "sgp3_dia";
	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box  { 
             label        = "����:";
             key          = "sgp3_len";
 	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "���:";
             key          = "sgp3_plat";
 	     edit_width   = 4;
             fixed_width  = true;}
          : radio_column {
             key          = "sgp3_com";
             : radio_button {
                label        = "��ֱ��";
                key          = "in_gb3";
                fixed_width  = true;}
             : radio_button {
                label        = "��ˮ�ڱ�";
                key          = "in_sp3";
                fixed_width  = true;}
          } 
        }
        : boxed_column {
          label        = "������ֱ˾";
          : edit_box  {
             label        = "��С:";
             key          = "sgp4_dia";
	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box  { 
             label        = "����:";
             key          = "sgp4_len";
 	     edit_width   = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "���:";
             key          = "sgp4_plat";
 	     edit_width   = 4;
             fixed_width  = true;}
          : radio_column {
             key          = "sgp4_com";
             : radio_button {
                label        = "��ֱ��";
                key          = "in_gb4";
                fixed_width  = true;}
             : radio_button {
                label        = "��ˮ�ڱ�";
                key          = "in_sp4";
                fixed_width  = true;}
          } 
        }
        : boxed_column {
          label         = "��  ��  ��";
          : edit_box {
             label        = "��С:";
             key          = "egp_dia";
             edit_width   = 4;
             fixed_width  = true;}
          : edit_box {
             label        = "����:";
             key          = "egp_len";
             edit_width   = 4;
             fixed_width  = true;}
          : radio_column {
             key          = "egp_drct";
             : text {
                label        = "����˾����ͷ:";
                fixed_width  = true;}
             : radio_button {
                label        = "�������";
                key          = "in_ejrp";
                fixed_width  = true;}
             : radio_button {
                label        = "�ڶ����";
                key          = "in_ejp";
                fixed_width  = true;}
          } 
        }
        : boxed_column {
          label        = "��     ��";
          spacer_1;
          : edit_box {
             label        = "��С:";
             key          = "rp_dia";
             edit_width   = 4;
             fixed_width  = true;}
          spacer_1;
          : edit_box {
             label        = "����:";
             key          = "rp_len";
             edit_width   = 4;
             fixed_width  = true;}
          spacer_1;
        }
      } 
    : row {     
      : boxed_column {
        label      = "��ģ��ͷ��˿....";
        : row {
           : edit_box {
              label        = "��һ���С:";
              key          = "tshcs1_dia";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "����:";
              key          = "tshcs1_len";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "���:";
              key          = "tshcs1_plat";
              edit_width   = 1;
              fixed_width  = true;}
         }
         : row {
           : edit_box {
              label        = "�ڶ����С:";
              key          = "tshcs2_dia";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "����:";
              key          = "tshcs2_len";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "���:";
              key          = "tshcs2_plat";
              edit_width   = 1;
              fixed_width  = true;}
         }
       }
       : boxed_column {
         label      = "��ģ��ͷ��˿....";
         : row {
           : edit_box {
              label        = "��һ���С:";
              key          = "bshcs1_dia";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "����:";
              key          = "bshcs1_len";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "���:";
              key          = "bshcs1_plat";
              edit_width   = 1;
              fixed_width  = true;}
         }
         : row {
           : edit_box {
              label        = "�ڶ����С:";
              key          = "bshcs2_dia";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "����:";
              key          = "bshcs2_len";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "���:";
              key          = "bshcs2_plat";
              edit_width   = 1;
              fixed_width  = true;}
         }
         : row {
           : edit_box {
              label        = "�������С:";
              key          = "bshcs3_dia";
              edit_width   = 4;
              fixed_width  = true;}
           : edit_box {
              label        = "����:";
              key          = "bshcs3_len";
              edit_width   = 4;
              fixed_width  = true;}
         }
      }
     }
     : row {
          spacer_1;
        : button {
           label        = "ģ��";
           key          = "plat";
           alignment    = centered;
           fixed_width  = true;}
        ok_only;
          spacer_1;
     }   
}  }
        