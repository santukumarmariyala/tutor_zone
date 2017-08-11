require 'test_helper'

class StreamSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stream_subject = stream_subjects(:one)
  end

  test "should get index" do
    get stream_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_stream_subject_url
    assert_response :success
  end

  test "should create stream_subject" do
    assert_difference('StreamSubject.count') do
      post stream_subjects_url, params: { stream_subject: { stream_id: @stream_subject.stream_id, subject_id: @stream_subject.subject_id } }
    end

    assert_redirected_to stream_subject_url(StreamSubject.last)
  end

  test "should show stream_subject" do
    get stream_subject_url(@stream_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_stream_subject_url(@stream_subject)
    assert_response :success
  end

  test "should update stream_subject" do
    patch stream_subject_url(@stream_subject), params: { stream_subject: { stream_id: @stream_subject.stream_id, subject_id: @stream_subject.subject_id } }
    assert_redirected_to stream_subject_url(@stream_subject)
  end

  test "should destroy stream_subject" do
    assert_difference('StreamSubject.count', -1) do
      delete stream_subject_url(@stream_subject)
    end

    assert_redirected_to stream_subjects_url
  end
end
