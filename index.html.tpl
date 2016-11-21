
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
      <div class="panel panel-primary" style="margin-top:10px;background-color:#2D6ED3;border-color:#000000;">
        <div class="panel-heading" style="background-color:#2D6ED3;border-color:#2D6ED3;">
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
            <li>{{ta.name}} <<a href="mailto:{{ta.email}}">{{ta.email}}</a>> </li>
            {% endfor %}
          </ul>
        </dd>

        <dt>Forum</dt>
          <dd><ul><li><a href="https://piazza.com/harvard/spring2017/cs181">Piazza </a></li></ul></dd>

        <dt>Office Hours</dt>
        <dd>
          <ul>
            {% for oh in ohs %}
            <li>{{oh.time}}: {{oh.location}}</li>
            {% endfor %}
          </ul>
        </dd>

        <dt>Lectures</dt>
        <dd>Tues/Thurs 10:00-11:30am </dd>

        <dt>Sections</dt>
          <dd>
          </dd>

        <dt>Links</dt>
        <dd>
          <ul>

            <li><a href="syllabus.pdf">Syllabus</a></li>

            <li><a href="https://canvas.harvard.edu/courses/21992">Canvas Site</a></li>
            <li><a href="http://www.github.com/cs287/hw_template/">Write-Up Template</a></li>
          </ul>
        </dd>

      </dl>
      </div>
      </div>
        <hr>
        <hr>
        <div class="row container">
          <h3 id="schedule">Schedule</h3>


      <table class="table table-hover">
        <tr><th>Date</th> <th>Area</th> <th>Topic</th><th>Readings</th> <th>Notes </th> <th>Assignment</th></tr>
        {% for lecture in lectures %}
        <tr>
          <td> {{dates[loop.index]}} </td> <td> {{lecture.topic | default("",true)}} </td>
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
            <li> Four Practicals [P] (40%) </li>
            <li> Five Homeworks [T] (30%) </li>
            <li> Midterm Exam 1  (15%) </li>
            <li> Midterm Exam 2  (15%) </li>
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
