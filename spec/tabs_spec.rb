describe "Navigation tabs", type: :feature, js: true do

  describe "has tabs" do
    before(:each) do
      # Navigate to home page before each test
      visit '/'
      
      # Find all tabs
      @tabs = all('.mdl-layout__tab-bar > a');
    end
    
    it "has 6 total tabs" do
      expect(@tabs.length).to eq(6)
    end
    
    it "renders the tabs" do
      expect(@tabs[0].text).to eq('HOME')
      expect(@tabs[1].text).to eq('ANNOUNCEMENTS')
      expect(@tabs[2].text).to eq('EVENTS')
      expect(@tabs[3].text).to eq('ABOUT')
      expect(@tabs[4].text).to eq('GET INVOLVED')
      expect(@tabs[5].text).to eq('CAMPUSGROUPS')
    end
  end
  
  context "responds to click" do
    before(:each) do
      # Navigate to home page before each test
      visit '/'
      
      # Find all tabs
      @tabs = all('.mdl-layout__tab-bar > a');
    end
    
    it "redirects to / after clicking Home tab" do
      @tabs[0].click
      expect(page).to have_current_path('/')
    end
    
    it "redirects to /announcements/ after clicking Announcements tab" do
      @tabs[1].click
      expect(page).to have_current_path('/announcements/')
    end
    
    it "redirects to /events/ after clicking Events tab" do
      @tabs[2].click
      expect(page).to have_current_path('/events/')
    end
    
    it "redirects to /about/ after clicking About tab" do
      @tabs[3].click
      expect(page).to have_current_path('/about/')
    end
    
    it "redirects to /get-involved.html after clicking Get Involved tab" do
      @tabs[4].click
      expect(page).to have_current_path('/get-involved/')
    end
  end
  
  describe "indicates active tab" do
    it "Home tab is active on / route" do
      visit '/'
      expect(find('.mdl-layout__tab.is-active').text).to eq('HOME')
    end
    
    it "Announcements tab is active on /announcements/ route" do
      visit '/announcements/'
      expect(find('.mdl-layout__tab.is-active').text).to eq('ANNOUNCEMENTS')
    end
    
    it "Events tab is active on /events/ route" do
      visit '/events/'
      expect(find('.mdl-layout__tab.is-active').text).to eq('EVENTS')
    end
    
    it "About tab is active on /about.html route" do
      visit '/about.html'
      expect(find('.mdl-layout__tab.is-active').text).to eq('ABOUT')
    end
    
    it "Get Involved tab is active on /get-involved.html route" do
      visit '/get-involved.html'
      expect(find('.mdl-layout__tab.is-active').text).to eq('GET INVOLVED')
    end
  end
  
end
