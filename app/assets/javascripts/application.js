//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){

  var quizLink = $('a');
  var questionNumber = 1;
  var correct_answers = 0;

  var getQuestion = function(){
      $.getJSON('/quizzes/1/questions/' + questionNumber, function(data){
        console.log(questionNumber);
        localStorage.setItem('setQuestion', JSON.stringify($(data)));
      })
  };

  var displayQuestion = function(){
    if (document.URL == 'http://localhost:3000/quizzes/1') {
      getQuestion();
      var question = localStorage.getItem('setQuestion');
      question = JSON.parse(question);
      var state = question[questionNumber - 1].description;
      var possible_answers = question[questionNumber - 1].possible_answers;
      function first_question(){
        $('.question').append(state);
        possible_answers.forEach(function(answer){
          $('.answers').append('<button class="btn btn-default">' + answer.description + '</button>');
        });
      }

      $('.nav').append('<button class="btn btn-primary" id="next">Next</button>');
      first_question();
      $('.score').append(String(correct_answers) + '/4')
    }
  };

  var getNextQuestion = function() {
    questionNumber = questionNumber + 1;
    getQuestion();
    console.log("hello");
    console.log(questionNumber);
    displayQuestion();
  };

//  $('#next').on('keydown', getNextQuestion());   EVENT FIRES WITHOUT CLICK AND I HAVE NO DAMN IDEA WHY

  displayQuestion()



});
