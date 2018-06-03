package com.angelhack.lovechain3;

import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements
        HomeFragment.OnFragmentInteractionListener,
        StoriesFragment.OnFragmentInteractionListener,
        CalendarFragment.OnFragmentInteractionListener,
        AccountFragment.OnFragmentInteractionListener{

    private TextView mTextMessage;

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation_home:
                    //mTextMessage.setText(R.string.title_home);
                    switchToFragmentHome();
                    return true;
                case R.id.navigation_stories:
                    //mTextMessage.setText(R.string.title_stories);
                    switchToFragmentStories();
                    return true;
                case R.id.navigation_calendar:
                    //mTextMessage.setText(R.string.title_calendar);
                    switchToFragmentCalendar();
                    return true;
                case R.id.navigation_account:
                    //mTextMessage.setText(R.string.title_account);
                    switchToFragmentAccount();
                    return true;
            }
            return false;
        }

    };

    public void switchToFragmentHome() {
        FragmentManager manager = getFragmentManager();
        manager.beginTransaction().replace(R.id.content, HomeFragment.newInstance()).commit();
    }

    public void switchToFragmentStories() {
        FragmentManager manager = getFragmentManager();
        manager.beginTransaction().replace(R.id.content, StoriesFragment.newInstance()).commit();
    }

    public void switchToFragmentCalendar() {
        FragmentManager manager = getFragmentManager();
        manager.beginTransaction().replace(R.id.content, CalendarFragment.newInstance()).commit();
    }

    public void switchToFragmentAccount() {
        FragmentManager manager = getFragmentManager();
        manager.beginTransaction().replace(R.id.content, AccountFragment.newInstance()).commit();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mTextMessage = (TextView) findViewById(R.id.message);
        BottomNavigationView navigation = (BottomNavigationView) findViewById(R.id.navigation);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);
        switchToFragmentHome();
    }

    @Override
    public void onFragmentInteraction(Uri uri) {

    }
}
