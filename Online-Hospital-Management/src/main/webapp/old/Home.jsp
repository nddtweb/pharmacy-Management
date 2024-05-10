<jsp:include page="header.jsp" />

<style>
    .jumbotron {
        background-color: #1e90f4;
        color: #fff;
        padding: 100px 25px 100px 25px;
        margin: 30px 30px 30px 30px;
        border-radius: 10px;
    }

    .btn-primary {
        background-color: #1ef449;
        border-color: #1ef449;
    }

    .btn-primary:hover {
        background-color: #1e90f4;
        border-color: #1e90f4;
    }

    .btn-default {
        background-color: #fff;
        border-color: #1ef449;
        color: #1ef449;
    }

    .btn-default:hover {
        background-color: #1e90f4;
        border-color: #1e90f4;
        color: #fff;
    }

    .section-container {
        background-color: #ffffff;
        display: flex;
        flex-direction: column;
        height: 100%;
        border-radius: 10px;
        padding: 100px 25px 100px 25px;
        margin: 30px 30px 30px 30px;

    }

    .section-container:hover {
        background-color: #1ef449;
    }

    .jumbotron {
        flex: 1;
        display: flex;
        flex-direction: column;
        border-radius: 10px;
    }

    .text-center {
        text-align: center;
    }

    /* Style custom list */
    .custom-list {
        list-style: none;
        padding: 0;
    }

    .custom-list li {
        margin-bottom: 10px;
        position: relative;
        padding-left: 20px;
    }

    .custom-list li:before {
        content: "\2022";
        /* Bullet character */
        color: #1ef449;
        /* Bullet color */
        font-size: 1.2em;
        position: absolute;
        left: 0;
        top: 0;
    }

    .custom-list li strong {
        font-weight: bold;
        color: #000000;
    }

    .custom-list li p {
        margin: 0;
    }

    .service-item {
        margin-top: 20px;
        margin-bottom: 20px;
        padding: 50px 50px 50px 50px;
        transition: background-color 0.3s;
        border-radius: 10px;
    }

    .service-item:hover {
        background-color: #1e90f4;
    }


</style>


<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron header-jumbotron text-center">
                <h1 class="display-4">Online Hospital Management System</h1>
                <p class="lead" style="color: white">A web application for managing hospital activities like patient
                    appointments, diagnosis, medicines, and more.</p>
                
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <div class="section-container">
                
                    <h1 class="text-center">Our Services</h1>
                    <h4>Our Online Hospital Management System offers a range of services to enhance patient care and
                        hospital operations:</h4>
                    <ul class="custom-list">
                        <li><strong>Appointment Scheduling:</strong> Patients can easily schedule appointments
                            online, reducing waiting times and improving efficiency.</li>
                        <li><strong>Prescription Management:</strong> Doctors can electronically prescribe medicines,
                            and patients can view their prescriptions online.</li>
                        <li><strong>Medical History Access:</strong> Patients have secure access to their medical
                            records, allowing for better-informed decisions and continuity of care.</li>
                        <li><strong>Medicine Inventory:</strong> Pharmacists can manage their inventory, ensuring the
                            availability of essential medicines at all times.</li>
                        <li><strong>Online Consultations:</strong> Patients can consult with healthcare professionals
                            remotely, promoting accessibility and timely medical advice.</li>
                        <li><strong>Health Monitoring:</strong> Patients can record and monitor their health metrics,
                            enabling proactive healthcare management.</li>
                    </ul>
                
            </div>
        </div>
        <div class="col-md-6">
            <div class="section-container">
                
                    <h1 class="text-center">Advantages for Patients</h1>
                    <h4>Choosing our Online Hospital Management System, patients enjoy several benefits:</h4>
                    <ul class="custom-list">
                        <li><strong>Convenience:</strong> Access healthcare medical services from the comfort of
                            your home, saving time and effort.</li>
                        <li><strong>Timely Access:</strong> Schedule appointments and consultations promptly, reducing
                            waiting times.</li>
                        <li><strong>Improved Communication:</strong> Stay connected with healthcare providers, enhancing
                            communication and understanding.</li>
                        <li><strong>Empowered Decision-Making:</strong> Access to medical records and prescriptions
                            empowers
                            patients to actively participate in their healthcare decisions.</li>
                        <li><strong>Enhanced Safety:</strong> Secure and encrypted systems ensure the confidentiality
                            and
                            safety of patient data.</li>
                        <li><strong>24/7 Availability:</strong> Access healthcare services anytime, anywhere, ensuring
                            continuous care, even during emergencies.</li>
                    </ul>
               
            </div>
        </div>
    </div>
</div>


</div>

<jsp:include page="footer.jsp" />