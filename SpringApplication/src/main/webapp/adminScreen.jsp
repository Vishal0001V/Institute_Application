<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style type="text/css">
.enroll {
	background-image: url("images/5.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	padding: 40px 0;
}

.heading {
	font-family: Montserrat;
	text-align: center;
	margin-bottom: 20px;
	color: #007bff;
}

form {
	background: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	margin: 0 auto;
}

.view {
	background-image: url("images/jpg");
	background-size: cover;
	background-repeat: no-repeat;
	padding: 40px 0;
}

.table-container {
	background: rgba(255, 255, 255, 0.9);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	margin-top: 20px;
}
</style>
<script type="text/javascript"> 
 
  
    function fees() 
    { 
    	
    document.fn.action="/fees" 
    document.action.submit(); 
    } 
    function batch() 
    { 
    document.fn.action="/batch" 
    document.action.submit(); 
    } 
    function remove() 
    { 
    document.fn.action="/remove" 
    document.action.submit(); 
    } 
  
 </script>  
</head>
<body>
	<div class="card">
		<nav class="d-flex justify-content-between p-2 border border-primary">
			<img src="images/cjclogo.jpeg" width="100px" height="50px">
			<div class="pt-2">
				<a href="#enroll"><button class="btn btn-outline-primary">Enroll
						Student</button></a> <a href="#view"><button
						class="btn btn-outline-primary">View Student</button></a> <a href="/"><button
						class="btn btn-outline-primary">Logout</button></a>
			</div>
		</nav>
		<section class="vh-100 gradient-custom enroll mt-2" id="enroll">
			<div class="container h-100">
				<div class="row justify-content-center h-100">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card shadow-2-strong card-registration mt-0"
							style="border-radius: 15px;">
							<div class="card-body mt-0">
								<h3 class="heading">Student Enrollment Form</h3>
								<form action="enroll_student">
									<div class="row">
										<div class="col-md-6 mb-2">
											<div class="form-outline">
												<input type="text" id="firstName"
													class="form-control form-control-sm" name="studentFullName" />
												<label class="form-label" for="firstName">First Full
													Name</label>
											</div>
										</div>
										<div class="col-md-6 mb-2">
											<div class="form-outline">
												<input type="email" id="lastName"
													class="form-control form-control-sm" name="studentEmail" />
												<label class="form-label" for="lastName">Student
													Email</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 mb-2 d-flex align-items-center">
											<div class="form-outline datepicker w-100">
												<input type="number" class="form-control form-control-sm"
													id="birthdayDate" name="studentAge" /> <label
													for="birthdayDate" class="form-label">Student Age</label>
											</div>
										</div>
										<div class="col-md-6 mb-2 pb-2">
											<div class="form-outline">
												<input type="tel" id="text"
													class="form-control form-control-sm"
													name="studentCollegeName" /> <label class="form-label"
													for="phoneNumber">Student College Name</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 mb-2 pb-2">
											<div class="form-outline">
												<input type="number" id="emailAddress"
													class="form-control form-control-sm" name="feesPaid" /> <label
													class="form-label" for="emailAddress">Fees Paid</label>
											</div>
										</div>
										<div class="col-md-6 mb-2">
											<h6 class="mb-2 pb-1">Student Course:</h6>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="java" value="Java" checked /> <label
													class="form-check-label" for="java">Java</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="python" value="Python" /> <label
													class="form-check-label" for="python">Python</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="testing" value="Testing" /> <label
													class="form-check-label" for="testing">Testing</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col">
											<select class="select form-control-sm" name="batchMode">
												<option value="#" disabled>Select Batch Mode</option>
												<option value="Online">Online</option>
												<option value="Offline">Offline</option>
											</select> <label class="form-label select-label">Batch Mode</label>
										</div>
										<div class="col">
											<select class="select form-control-sm" name="batchNumber">
												<option value="#" disabled>Select Batch Number</option>
												<option value="FDJ-160">FDJ-160</option>
												<option value="REG-160">REG-160</option>
												<option value="FDJ-161">FDJ-161</option>
												<option value="REG-161">REG-161</option>
												<option value="FDJ-162">FDJ-162</option>
												<option value="REG-162">REG-162</option>

											</select> <label class="form-label select-label">Batch Number</label>
										</div>
									</div>
									<div class="mt-2 pt-2 d-flex justify-content-center">
										<input class="btn btn-primary btn-lg" type="submit"
											value="Submit" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="view" style="height: 530px" id="view">
			<h1 class="text-center">Student Details..!</h1>
			<div class="text-center w-100">
				<form action="search" class="w-100">
					<select class="select form-control-sm border border-primary"
						name="batchNumber">
						<option value="#" selected>Select Batch Number</option>
						<option value="FDJ-160">FDJ-160</option>
						<option value="REG-160">REG-160</option>
						<option value="FDJ-161">FDJ-161</option>
						<option value="REG-161">REG-161</option>
						<option value="FDJ-162">FDJ-162</option>
						<option value="REG-162">REG-162</option>
					</select>
					<button class="btn btn-outline-primary mb-1">Search</button>
				</form>
				<marquee>
					<h1 style="color: red;">${message }</h1>
				</marquee>
			</div>
			
			<form name="fn">
				<table class="table table-hover table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Student Name</th>
							<th>Student Email</th>
							<th>Age</th>
							<th>College Name</th>
							<th>Course Name</th>
							<th>Batch No</th>
							<th>Mode</th>
							<th>Fees Received</th>
							<th>Select</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${data}" var="s">
							<tr>
								<td>${s.studentId}</td>
								<td>${s.studentFullName}</td>
								<td>${s.studentEmail}</td>
								<td>${s.studentAge}</td>
								<td>${s.studentCollegeName}</td>
								<td>${s.studentCourse}</td>
								<td>${s.batchNumber}</td>
								<td>${s.batchMode}</td>
								<td>${s.feesPaid}</td>
								<td>
								<input type="radio" name="id" value="${s.studentId}">
								</td>
								<td>

									<div class="btn-group btn-group-sm" role="group"aria-label="...">
										
										<button class="btn btn-outline-success" onclick="fees()">Pay-Fees</button>
										<button class="btn btn-outline-primary" onclick="batch()">Shift-Batch</button>
										<button class="btn btn-outline-danger" onclick="remove()">Remove</button>
									</div>

								</td>

							
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</form>
		</section>
	</div>
</body>
</html>
