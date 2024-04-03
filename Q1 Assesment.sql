CREATE TABLE relocated_teams (
    team_id INT,
    league_id INT,
    old_team_name VARCHAR(255),
    team_name VARCHAR(255),
    relocation_date DATE
);

CREATE TABLE winning_team_salary (
    team_id INT,
    salary DECIMAL(20, 2),
    currency VARCHAR(3),
    first_win_dt DATE
);

CREATE TABLE championship_revenue (
    team_id INT,
    first_win_dt DATE,
    revenue DECIMAL(20, 2),
    league_id INT
);

-- Insert the sample data into relocated_teams table
INSERT INTO relocated_teams (team_id, league_id, old_team_name, team_name, relocation_date) VALUES
(32578, 1, 'Montreal Expos', 'Washington Nationals', '2004-09-24'),
(83942, 3, 'Hartford Whalers', 'Carolina Hurricanes', '1997-04-13'),
(89788, 2, 'Seattle Supersonics', 'Oklahoma City Thunder', '2019-01-01');

-- Insert the sample data into winning_team_salary table
INSERT INTO winning_team_salary (team_id, salary, currency, first_win_dt) VALUES
(32578, 215605216.00, 'USD', '2019-10-30'),
(83942, 51505200.00, 'USD', '2006-06-20');

-- Insert the sample data into championship_revenue table
INSERT INTO championship_revenue (team_id, first_win_dt, revenue, league_id) VALUES
(32578, '2019-10-30', 1254308233.00, 1),
(83942, '2006-06-20', 954204342.00, 3);

-- SQL query to find the difference in revenue and salary for the Washington Nationals in their championship year
SELECT 
    rt.team_id,
    rt.team_name,
    cr.revenue - wts.salary AS revenue_salary_difference,
    cr.revenue,
    wts.salary,
    wts.currency,
    wts.first_win_dt
FROM 
    relocated_teams rt
JOIN 
    winning_team_salary wts ON rt.team_id = wts.team_id
JOIN 
    championship_revenue cr ON rt.team_id = cr.team_id AND wts.first_win_dt = cr.first_win_dt
WHERE 
    rt.team_name = 'Washington Nationals';
