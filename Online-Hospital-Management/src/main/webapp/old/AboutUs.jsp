<jsp:include page="header.jsp" />


<style>
    .about-us-content {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
    }

    .about-us {
        margin-top: 20px;
    }

    .about-us h1 {
        
        font-size: 36px;
        font-weight: bold;
        margin-bottom: 20px;
    }

    .about-us p {
        font-size: 18px;
        line-height: 1.5;
        margin-bottom: 20px;
    }

    .about-us ol {

        font-size: 18px;
        line-height: 1.5;
        margin-bottom: 20px;
        margin-left: 20px;
    }

    .about-us ol li {
        font-size: 18px;
        line-height: 1.5;
        margin-bottom: 10px;
    }

    .about-us ol li strong {
        font-weight: bold;
    }

    .section-container {
        background-color: #ffffff;
        display: flex;
        flex-direction: column;
        height: 100%;
        border-radius: 10px;
        margin: 5% 20% 5% 20%;

    }

    .section-container:hover {
        background-color: #84f1d4;
    }
</style>
<div class="section-container">

    <main class="about-us-content">
        <section class="about-us">
            <center><h1 class="display-4">About Us</h1></center>
            <p>An online hospital management system is a web-based application that helps hospitals and clinics manage
                their daily operations more efficiently. It provides a centralized platform for managing patient data,
                appointments, medical records, billing, and other administrative tasks. Here are some of the key
                features of an online hospital management system:</p>
            <ol>
                <li><strong>Patient Management:</strong> The system allows hospitals to manage patient data, including
                    personal information, medical history, and treatment plans. It also enables doctors to access
                    patient records from anywhere, which helps them make informed decisions about patient care.</li>
                <li><strong>Appointment Scheduling:</strong> The system allows patients to book appointments online,
                    which saves time and reduces the workload of hospital staff. It also sends automated reminders to
                    patients about their upcoming appointments.</li>
                <li><strong>Billing and Invoicing:</strong> The system automates the billing process, which reduces
                    errors and saves time. It also generates invoices and tracks payments, making it easier for
                    hospitals to manage their finances.</li>
                <li><strong>Inventory Management:</strong> The system helps hospitals manage their inventory of
                    medicines, medical equipment, and other supplies. It tracks the usage of these items and generates
                    alerts when supplies are running low.</li>
                <li><strong>Reporting and Analytics:</strong> The system generates reports and analytics that help
                    hospitals track their performance and identify areas for improvement. It also provides insights into
                    patient demographics, treatment outcomes, and other key metrics.</li>
            </ol>
        </section>
    </main>
</div>


    <jsp:include page="footer.jsp" />