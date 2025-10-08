`include "defines.svh"
class fifo_write_seq_item extends uvm_sequence_item;

  rand logic [`DSIZE - 1 : 0] wdata;
  //rand logic wrst_n;
  rand logic winc;
  logic wfull;

  `uvm_object_utils_begin(fifo_write_seq_item)
  `uvm_field_int(wdata, UVM_ALL_ON)
  `uvm_field_int(winc, UVM_ALL_ON)
  `uvm_field_int(wfull,UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "fifo_write_seq_item");
    super.new(name);
  endfunction

endclass


class fifo_read_seq_item extends uvm_sequence_item;

  logic [`DSIZE - 1 : 0] rdata;
  rand logic rinc;
  logic rempty;

  `uvm_object_utils_begin(fifo_read_seq_item)
  `uvm_field_int(rdata, UVM_ALL_ON)
  `uvm_field_int(rinc, UVM_ALL_ON)
  `uvm_field_int(rempty,UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "fifo_read_seq_item");
    super.new(name);
  endfunction

endclass
