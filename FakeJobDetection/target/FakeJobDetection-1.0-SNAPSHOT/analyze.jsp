
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Analyze Job | FakeJobDetect</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f6fc;
            color: #17213a;
        }

        .navbar {
            background: white;
            padding: 20px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            color: #3156d9;
            font-size: 23px;
            font-weight: bold;
        }

        .navbar a {
            text-decoration: none;
            color: #3156d9;
            font-weight: bold;
        }

        .container {
            max-width: 850px;
            margin: 45px auto;
            padding: 0 20px;
        }

        .heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .heading h1 {
            font-size: 32px;
            margin-bottom: 12px;
        }

        .heading span {
            color: #3156d9;
        }

        .heading p {
            color: #78839a;
            line-height: 1.6;
        }

        .form-box {
            background: white;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 6px 25px #e1e6f2;
        }

        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .field {
            margin-bottom: 22px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 9px;
            color: #26334f;
        }

        input, select, textarea {
            width: 100%;
            padding: 13px;
            border: 1px solid #d7deeb;
            border-radius: 7px;
            outline: none;
            font-size: 14px;
        }

        input:focus, select:focus, textarea:focus {
            border-color: #3156d9;
        }

        textarea {
            height: 140px;
            resize: vertical;
        }

        .hint {
            color: #78839a;
            font-size: 12px;
            margin-top: 7px;
        }

        .analyze-btn {
            width: 100%;
            padding: 15px;
            background: #3156d9;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .analyze-btn:hover {
            background: #2444b5;
        }

        .note {
            margin-top: 20px;
            background: #eef2ff;
            padding: 15px;
            border-radius: 8px;
            color: #3156d9;
            font-size: 13px;
            line-height: 1.6;
        }

        @media(max-width: 600px) {
            .form-row {
                grid-template-columns: 1fr;
                gap: 0;
            }

            .form-box {
                padding: 22px;
            }

            .heading h1 {
                font-size: 25px;
            }
        }
    </style>
</head>

<body>

<nav class="navbar">
    <div class="logo">🛡 FakeJobDetect</div>
    <a href="dashboard.jsp">← Back to Dashboard</a>
</nav>

<div class="container">

    <div class="heading">
        <h1>Analyze <span>Job Advertisement</span></h1>
        <p>
            Enter job details below to identify suspicious
            and potentially fraudulent job advertisements.
        </p>
    </div>

    <div class="form-box">

       <form action="${pageContext.request.contextPath}/AnalyzeServlet" method="post">

            <div class="form-row">

                <div class="field">
                    <label>Job Title *</label>
                    <input type="text" name="jobTitle"
                           placeholder="e.g. Data Entry Operator" required>
                </div>

                <div class="field">
                    <label>Company Name *</label>
                    <input type="text" name="company"
                           placeholder="Enter company name" required>
                </div>

            </div>

            <div class="form-row">

                <div class="field">
                    <label>Job Location</label>
                    <input type="text" name="location"
                           placeholder="e.g. Chandigarh">
                </div>

                <div class="field">
                    <label>Salary Offered</label>
                    <input type="text" name="salary"
                           placeholder="e.g. 25000 per month">
                </div>

            </div>

            <div class="form-row">

                <div class="field">
                    <label>Employment Type</label>
                    <select name="employmentType">
                        <option value="">Select employment type</option>
                        <option>Full Time</option>
                        <option>Part Time</option>
                        <option>Work From Home</option>
                        <option>Internship</option>
                        <option>Contract</option>
                    </select>
                </div>

                <div class="field">
                    <label>Company Website</label>
                    <input type="text" name="website"
                           placeholder="Enter company website">
                </div>

            </div>

            <div class="field">
                <label>Job Description *</label>
                <textarea name="description"
                    placeholder="Paste the complete job advertisement here..."
                    required></textarea>

                <p class="hint">
                    Include job responsibilities, requirements,
                    salary details and any payment conditions.
                </p>
            </div>

            <button type="submit" class="analyze-btn">
                🔍 Analyze Job Advertisement
            </button>

        </form>

        <div class="note">
            🔒 Your job information will be analyzed for
            suspicious indicators. Always independently verify
            employers before sharing money or personal information.
        </div>

    </div>

</div>

</body>
</html>
