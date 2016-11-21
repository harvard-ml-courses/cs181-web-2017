
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" href="../../favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="jquery.dataTables.min.js"></script>

    <script src="bib-list.js"></script>

    <link rel="stylesheet" href="bib-publication-list.css" type="text/css" />

    <title>Harvard CS 181</title>

    <!-- Bootstrap core CSS -->

    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="page.css">
  </head>

  <body>
    <div class="row">
    </div>
    <div class="container">
      <div class="panel panel-primary" style="margin-top:10px;background-color:#B75F33;border-color:#000000;">
        <div class="panel-heading" style="background-color:#B75F33;border-color:#B75F33;">
          <h1>CS181: Machine Learning</h1>
          <p class="lead">Harvard University</p>

        </div>
        <div class="panel-footer">
          <ul class="nav nav-pills invert-colors">
            <li><a href="#announcements">Announcements</a></li>
            <li><a href="#schedule">Schedule</a></li>
            <li><a href="#grading">Grading</a></li>
            <!-- <li><a href="#faq">FAQ</a></li> -->
          </ul>
        </div>
      </div>
      <div class="container">
        <div class="row container">
      <h3 id="description">Course Info</h3>

      <div class="container ">
        <!-- <div class="panel-body"> -->
        <dl>
          <dt>Instructor</dt>
          <dd>David Parkes <<a>parkes@eecs.harvard.edu</a>> </dd>
          <dd>OH: </dd>
        <dd>Alexander "Sasha" Rush <<a>srush@seas.harvard.edu</a>> </dd>
        <dd>  OH: Wed 1-4, MD 217 (<a href="http://tinyurl.com/srush-schedule">reserve</a>)</dd>

        <dt>Teaching Assistants</dt>
        <dd>
          <ul>
            {% for ta in tas %}
            <li>{{ta.name}} <<a href="mailto:{{ta.email}}">{{ta.email}}</a>> OH: {{ta.ohtime}}}, {{ta.location}}} </li>
            {% endfor %}
          </ul>
        </dd>

        <dt>Course Email</dt>
        <dd><ul><li><<a href="mailto:cs287-harvard@googlegroups.com">cs287-harvard@googlegroups.com</a>></ul></li></dd>

        <dt>Lectures</dt>
        <dd>Tues/Thurs 2:30-4pm Jefferson 256</dd>

        <dt>Sections</dt>
          <dd>
          </dd>

        <dt>Links</dt>
        <dd>
          <ul>
            <li><a href="https://github.com/CS287/Lectures/raw/master/syllabus.pdf">Syllabus</a></li>
            <li><a href="http://piazza.com/harvard/spring2016/cs287">Piazza Forum</a></li>
            <li><a href="https://canvas.harvard.edu/courses/9534">Canvas Site</a></li>
            <li><a href="http://www.github.com/cs287/hw_template/">Write-Up Template</a></li>
            <li><a href="http://u.cs.biu.ac.il/~yogo/nnlp.pdf">Primer on NN for NLP (YG)</a></li>
          </ul>
        </dd>

      </dl>
      </div>
      </div>
        <hr>
        <div class="row container">
          <h3 id="announcements">Announcements</h3>

          <ul>
            <li>The nn tutorial will be Friday (2/12) at 2pm, in MD 223</li>
            <li>The Torch tutorial will be tomorrow (1/29) at 2pm, in Pierce 320</li>
          </ul>
        </div>
        <hr>
        <div class="row container">
          <h3 id="schedule">Schedule</h3>


      <table class="table table-hover">
        <tr><th>Date</th> <th>Area</th> <th>Topic</th><th>Readings</th> <th>Notes </th> <th>Assignment</th></tr>
        {% for lecture in lectures %}
        <tr>
          <td> {{lecture.date}} </td> <td> {{lecture.topic | default("",true)}} </td>
          <td> {{lecture.subtopic|default("", true)}}</td>
          <td>
            {% if lecture.papers %}
            {% for paper in lecture.papers %}
            <div><a href="#cite_{{paper.cite}}">{{paper.name}}</a></div>
            {% endfor %}
            {% endif %}
          </td>
          <td> {{lecture.notes}}</td>
          <td> {{lecture.hw | default("",true)}}</td>
        </tr>
        {% endfor %}
      </table>
      </div>

      <hr>


      <div class="row container">
        <h3 id="grading">Grading</h3>

        <p class="container">
          Grades are determined by four aspects of the class:
          <ul>
            <li> Five assignments (50%) </li>
            <li> In-class exam  (20%) </li>
            <li> Final project (25%)</li>
            <li> Class participation (5%)</li>
          </ul>
        </p>
      </div>


      <!-- <div class="row container"> -->
      <!-- <h3 id="faq">FAQ</h3> -->
      <!-- <p class="container"> -->
      <!--     <ul> -->
      <!--       <li> <p> </p> -->
      <!--     </ul> -->
      <!-- </p> -->
      <!-- </div> -->



      <div class="row container">
        <h3 id="cites">Citations</h3>

        <table id="pubTable" class="table table-hover"></table>
        <script>
          $(function(){
          bibtexify("page.bib", "pubTable", {"visualization":false});}
          );
        </script>




      </div>

    </div> <!-- /container -->


  </body>
</html>



<head>


</head>
<html>

</html>
