<!DOCTYPE html>

@extends('home.mainLayout')
@section('content')

<div class="content">
	<div  class="CourseInfo" align="center">
		<div class="card" style="width:700px;">
			<div class="card-header card-header-primary">
				<h4 class="card-title">Send Mail</h4>
				
			</div>
			<div class="card-body">	
			@foreach($errors->all() as $err)
					<p style="color:red;">*{{$err}} </p>
			@endforeach	
				<form method="post">
				{{ csrf_field() }}
					<fieldset style="width: 600px;" align="center">
						<table style="width: 100%; padding: 15px;">
							<tr>
								<th></th>
								<th></th>
							</tr>
							<tr>
								<td>To:</td>
								<td>
									<input type="text" name="send_to" style="width: 300px"><br><br>
								</td>
							</tr>
							<tr>
								<td>Subject:</td>
								<td>
									<input type="text" name="subject" style="width: 300px"><br><br>
								</td>
							</tr>
							<tr>
								<td>
									Notice: 
								</td>
								<td>
									<textarea name="noticetext" rows="10" cols="60">  </textarea>
								</td>
							</tr>
							
						</table>	
					</fieldset>
					<br>
					<br>
					
					<hr style="width: 530px;" align="center">
					<button class="btn btn-primary pull-center" name="btnButton" value="back">Back</button>
					<button class="btn btn-primary pull-center" name="btnButton" value="send">Send</button>
					<br>
					
				</form>
			</div>
		</div>
	</div>
</div>
		
@endsection

@section('title')
	Send Mail
@endsection