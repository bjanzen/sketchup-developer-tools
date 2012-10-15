# Copyright:: Copyright 2012 Trimble Navigation Ltd.
# License:: Apache License version 2.0
# Original Author:: Scott Lininger 
#
# Tests the SketchUp Ruby API Tools object.
#
# This file was originally generated by ourdoc.rb, an internal tool we developed
# specifically for outputting support files (documentation, unit tests, etc.)
# from the standard, doxygen-style c++ comments that are embedded into the
# Ruby implementation files. You can find ourdoc.rb alongside these
# implementation files at:
#
# googleclient/sketchup/source/sketchup/ruby
#

require 'test/unit'

# TC_Tools contains unit tests for the Tools class.
#
# API Object::       Tools
# C++ File::         rtools.cpp
# Parent Class::     Object
# Version::          SketchUp 6.0
#
# The Tools class contains methods to manipulate a collection of SketchUp
# tools.
#
class TC_Tools < Test::Unit::TestCase

  class MyTool
    def activate
      puts "Your tool has been activated."
    end
  end
  
  # Setup for test cases, if required.
  #
  def setup

  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Tools.model
  # @file                rtools.cpp
  #
  # The model method is used to get the model associated with this tools
  # object.
  #
  #
  # Args:
  #
  # Returns:
  # - model: a Model object associated with this tool.
  #

  # Test the example code that we have in the API documentation.
  def test_model_api_example 
    assert_nothing_raised do
      tools = Sketchup.active_model.tools
      model = tools.model
    end
  end

  # Test edgecases for values passed to this method.
  #def test_model_edgecases
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_equal('expected', 'result',
  #               'Failed in test_model_edgecases' )
  #end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_model_bad_params
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #end

  # Test that the model method returns a model object.
  #def test_model_returns_model_obj
  #  obj = Sketchup::Tools.new
  #  model_obj = obj.model
  #  result = model_obj.class
  #  expected = Sketchup::Model
  #  assert_equal(expected, result, 'Expected does not match result.')
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Tools.pop_tool
  # @file                rtools.cpp
  #
  # The pop_tool method is used to pop the last pushed tool on the tool
  # stack.
  #
  #
  # Args:
  #
  # Returns:
  # - tool: the last pushed Tool object.
  #

  # Test the example code that we have in the API documentation.
  def test_pop_tool_api_example
    assert_nothing_raised do
      tools = Sketchup.active_model.tools
      tool = tools.pop_tool
    end
  end

  # Test edgecases for values passed to this method.
  #def test_pop_tool_edgecases
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_equal('expected', 'result',
  #               'Failed in test_pop_tool_edgecases' )
  #end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_pop_tool_bad_params
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Tools.push_tool
  # @file                rtools.cpp
  #
  # The push_tool method is used to push (aka activate) a user-defined
  # tool. See the Tool interface for details on creating your own SketchUp
  # tool.
  #
  #
  # Args:
  # - tool: A user defined tool.
  #
  # Returns:
  # - status: true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_push_tool_api_example
    my_tool = MyTool.new
  
    assert_nothing_raised do
      tools = Sketchup.active_model.tools
      status = tools.push_tool my_tool
    end
    
  end

  # Test edgecases for values passed to this method.
  #def test_push_tool_edgecases
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_equal('expected', 'result',
  #               'Failed in test_push_tool_edgecases' )
  #end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_push_tool_bad_params
  #  assert_raise NameError do
  #    tools = Sketchup.active_model.tools
  #    status = tools.push_tool "Simone"
  #  end
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Tools.active_tool_name
  # @file                rtools.cpp
  #
  # The active_tool_name method is used to retrieve the active tool's
  # name.
  #
  #
  # Args:
  #
  # Returns:
  # - : name = the active tool's name.
  #

  # Test the example code that we have in the API documentation.
  def test_active_tool_name_api_example
    assert_nothing_raised do
      tools = Sketchup.active_model.tools
      name = tools.active_tool_name
    end
  end

  # Test edgecases for values passed to this method.
  #def test_active_tool_name_edgecases
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_equal('expected', 'result',
  #               'Failed in test_active_tool_name_edgecases' )
  #end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_active_tool_name_bad_params
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Tools.active_tool_id
  # @file                rtools.cpp
  #
  # The active_tool_id method is used to retrieve the active tool's id.
  #
  #
  # Args:
  #
  # Returns:
  # - id: the active tool's id.
  #

  # Test the example code that we have in the API documentation.
  def test_active_tool_id_api_example
    assert_nothing_raised do
      tools = Sketchup.active_model.tools
      id = tools.active_tool_id
    end
  end

  ## Test edgecases for values passed to this method.
  #def test_active_tool_id_edgecases
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_equal('expected', 'result',
  #               'Failed in test_active_tool_id_edgecases' )
  #end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_active_tool_id_bad_params
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Tools.add_observer
  # @file                rtools.cpp
  #
  # The add_observer method is used to add an observer to the current
  # object.
  #
  #
  # Args:
  # - observer: An observer.
  #
  # Returns:
  # - status: true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_add_observer_api_example
    assert_nothing_raised do
      tools = Sketchup.active_model.tools
      status = tools.add_observer Sketchup::ToolsObserver.new
    end
  end

  # Test edgecases for values passed to this method.
  #def test_add_observer_edgecases
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_equal('expected', 'result',
  #               'Failed in test_add_observer_edgecases' )
  #end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_add_observer_bad_params
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Tools.remove_observer
  # @file                rtools.cpp
  #
  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  #
  # Args:
  # - observer: An observer.
  #
  # Returns:
  # - status: true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_remove_observer_api_example
    assert_nothing_raised do
      tools = Sketchup.active_model.tools
      tools_observer = Sketchup::ToolsObserver.new
      tools.add_observer tools_observer

      status = tools.remove_observer nil
      assert_equal(status, false, "Failed in test_remove_observer_api_example")

      status = tools.remove_observer tools_observer
      assert_equal(status, true, "Failed in test_remove_observer_api_example")
    end
  end
end