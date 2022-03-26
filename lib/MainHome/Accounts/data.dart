class Application {
  var position;
  var company;
  var location;
  var salary;

  Application({this.position, this.company, this.salary, this.location});
}

List<Application> getApplication() {
  return <Application>[
    Application(
        position: "Frontend React Developer",
        company: "Google",
        location: "Sillicon Valley",
        salary: "3LPA-4LPA"),
    Application(
        position: "Frontend React Developer",
        company: "Google",
        location: "Sillicon Valley",
        salary: "3LPA-4LPA"),
    Application(
        position: "Frontend React Developer",
        company: "Google",
        location: "Sillicon Valley",
        salary: "3LPA-4LPA"),
    Application(
        position: "Frontend React Developer",
        company: "Google",
        location: "Sillicon Valley",
        salary: "3LPA-4LPA"),
  ];
}

class Job {
  var position;
  var company;
  var salary;
  var concept;
  var location;
  var openings;

  Job(
      {this.position,
      this.company,
      this.salary,
      this.concept,
      this.location,
      this.openings});
}

List<Job> getJobs() {
  return [
    Job(
        position: "Frontend React Developer",
        company: "Google",
        concept: "HTML/CSS",
        salary: "3LPA-4LPA",
        location: "New York",
        openings: 10),
    Job(
        position: "Frontend React Developer",
        company: "Google",
        concept: "HTML/CSS",
        salary: "3LPA-4LPA",
        location: "New York",
        openings: 10),
    Job(
        position: "Frontend React Developer",
        company: "Google",
        concept: "HTML/CSS",
        salary: "3LPA-4LPA",
        location: "New York",
        openings: 10),
    Job(
        position: "Frontend React Developer",
        company: "Google",
        concept: "HTML/CSS",
        salary: "3LPA-4LPA",
        location: "New York",
        openings: 10),
  ];
}

List<String> getJobsRequirements() {
  return <String>[
    "Candidate must be fluent with JavaScript",
    "Candidate must be fluent with JavaScript",
    "Candidate must be fluent with JavaScript",
    "Candidate must be fluent with JavaScript",
  ];
}

class AvlClasses {
  var position;
  var company;
  var durations;
  var tasks;
  AvlClasses({this.position, this.company, this.durations, this.tasks});
}

List<AvlClasses> getClasses() {
  return [
    AvlClasses(
        position: "Front-end with React",
        company: "By Mr. XYZ",
        durations: "20 hours",
        tasks: 2),
    AvlClasses(
        position: "Front-end with React",
        company: "By Mr. XYZ",
        durations: "20 hours",
        tasks: 2),
    AvlClasses(
        position: "Front-end with React",
        company: "By Mr. XYZ",
        durations: "20 hours",
        tasks: 2),
    AvlClasses(
        position: "Front-end with React",
        company: "By Mr. XYZ",
        durations: "20 hours",
        tasks: 2),
    AvlClasses(
        position: "Front-end with React",
        company: "By Mr. XYZ",
        durations: "20 hours",
        tasks: 2),
  ];
}
