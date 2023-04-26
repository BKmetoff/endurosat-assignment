def test_health(app, client):
    response = client.get("/health")
    assert response.status_code == 200
