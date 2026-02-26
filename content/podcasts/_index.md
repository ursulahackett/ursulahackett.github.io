---
title: "Podcasting"
---

<style>

  /* Hide the big page title on this page only */
  .page-body h1 {
    display: none;
  }

  /* Make the main content column wider site-wide */
  .page-body .max-w-prose {
    max-width: 100rem; /* ~1150px; tweak up/down to taste */
  }

  /* Kill the narrow central column on this page */

  /* outer wrapper that Hugo Blox uses */
  .page-body .max-w-prose {
    max-width: 900px;
    width: 100%;
  }

  /* Tailwind Typography plugin adds a max-width on .prose */
  .page-body article.prose {
    max-width: none;
    width: 100%;
  }

.podcast-wrapper {
  max-width: 1200px;
  margin: 0 auto;
}

/* grid */
/* Base: 1 column */
.podcast-wrapper .podcast-grid {
  display: grid !important;
  grid-template-columns: 1fr;
  gap: 2.5rem;
  align-items: stretch;      /* make items same height in each row */
}


/* Medium screens: 2 columns */
@media (min-width: 600px) {
  .podcast-wrapper .podcast-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}

/* Large screens: 3 columns */
@media (min-width: 700px) {
  .podcast-wrapper .podcast-grid {
    grid-template-columns: repeat(3, minmax(0, 1fr));
  }
}


/* Large screens: 4 columns */
@media (min-width: 900px) {
  .podcast-wrapper .podcast-grid {
    grid-template-columns: repeat(4, minmax(0, 1fr));
  }
}
/* card = flex column */
.podcast-card {
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
}

/* image */
.podcast-card img {
  max-width: 220px;
  width: 100%;
  height: auto;
  margin-left: auto;
  margin-right: auto;
}

/* push the “Listen here” link to the bottom */
.podcast-card a.btn-primary {
  margin-top: auto;
}


/* Fixed-height image container */
.podcast-card .cover-wrapper {
  height: 260px;        /* adjust until it fits your tallest covers */
  display: flex;
  align-items: flex-end;  /* or center, see below */
  justify-content: center;
  margin-bottom: 1rem;   /* spacing before title */
}

/* Make sure the images scale naturally */
.podcast-card .cover-wrapper img {
  max-height: 100%;
  width: auto;
  height: auto;
}

.podcast-wrapper {
  max-width: 1200px;
  margin: 0 auto;
}

/* Featured podcast callout */
.featured-podcast {
  display: grid;
  grid-template-columns: minmax(0, 2fr) minmax(0, 1fr); /* 2/3 text, 1/3 cover */
  gap: 2rem;
  align-items: start;
}

@media (max-width: 768px) {
  .featured-podcast {
    grid-template-columns: 1fr; /* stack on small screens */
  }
}

.featured-podcast__cover img {
  max-width: 220px;   /* control the cover size */
  height: auto;
  display: block;
  margin: 0 auto;
}


</style>

<p style="text-align:center; margin: 0;">
<img src="abraham_link_in_bio.jpeg"
 alt="Abraham Link-in bio"
 style="max-width: 900px; width: 100%; height: auto;">
</p>


<div class="not-prose my-12">
<div class="featured-podcast">

<!-- Text column -->
<div class="featured-podcast__content">
<p class="text-sm font-semibold tracking-wide uppercase">
February 26, 2026
</p>
<p class="mt-1 text-xs font-semibold tracking-wide uppercase">
Listen to my latest podcast with the New Books Network
</p>

<p class="mt-3 text-sm leading-relaxed">
Each year, as many as 250 million Americans face civil legal problems like eviction, debt collection, and substandard housing. These problems are disproportionately shouldered by racially and economically marginalized people, particularly women of color. Civil courts and legal aid organizations are supposed to protect their rights, yet more than 90 percent of low-income people receive inadequate or no legal assistance. Instead, access to justice is reserved for those who can afford its high price. In
<a href="https://press.princeton.edu/books/hardcover/9780691264462/uncivil-democracy?srsltid=AfmBOooo06QjVgXGQkXuJqhWgfMifRefgE9mR3pB02KLj12GfXUyoweP"
target="_blank" rel="noopener"
class="font-semibold hover:underline">
Uncivil Democracy: How Access to Justice Shapes Political Power
</a> (Princeton University Press, 2026), 
Jamila Michener and Mallory SoRelle show how civil legal problems, and the institutions meant to address them, greatly erode trust in the legal system among marginalized communities, undermining their broader sense of democratic citizenship and political standing.
</p>

<p class="mt-3 text-sm leading-relaxed">
While legal representation offers vital protections, increased access to justice through an ever-growing supply of lawyers does not address the structural problems that generate demand for lawyers in the first place. Looking at cases involving unfair evictions and substandard housing, Michener and SoRelle demonstrate how community groups such as tenants’ unions can fill this justice gap and provide the means to build political power that transforms the conditions that create precarity. Drawing on eye-opening qualitative evidence and a wealth of historical and survey data, Uncivil Democracy explains why collective organizing holds the greatest promise for altering the systems that create civil legal problems and exercising the political power necessary for meaningful change.
</p>

<a href="https://newbooksnetwork.com/uncivil-democracy-2"
target="_blank" rel="noopener"
class="inline-block mt-4 btn btn-primary">
Listen now
</a>
</div>

<!-- Cover column -->
<div class="featured-podcast__cover">
<img
src="uncivildemocracy.jpg"
alt="Uncivil Democracy cover"
>
</div>

</div>
</div>


<div class="mt-12">
  <p class="text-sm font-semibold tracking-wide uppercase">
    Previous episodes
  </p>
  <div class="mt-1 mb-4 border-b border-gray-300 w-full"></div>
</div>


<div class="podcast-wrapper not-prose">

<div class="podcast-grid not-prose">

  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/the-adaptability-paradox-2" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="adaptability_paradox.jpg"
        alt="Adaptability Paradox cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">Uncivil Democracy</h3>
    <p class="mt-1 text-sm">
      Interview with Stephen Skowronek (12 Jan 2026)
    </p>
    <a
      href="https://newbooksnetwork.com/the-adaptability-paradox-2"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>
  
  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/taxation-and-resentment" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="tax_resentment.jpg"
        alt="Taxation Resentment cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">Taxation and Resentment</h3>
    <p class="mt-1 text-sm">
      Interview with Andrea Louise Campbell (10 Sep 2025)
    </p>
    <a
      href="https://newbooksnetwork.com/taxation-and-resentment"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/developing-scholars" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="developing_scholars.jpg"
        alt="Developing Scholars cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">Developing Scholars</h3>
    <p class="mt-1 text-sm">
      Interview with Domingo Morel (19 Nov 2024)
    </p>
    <a
      href="https://newbooksnetwork.com/developing-scholars"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/the-political-development-of-american-debt-relief-2" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="debt_relief.jpg"
        alt="American Debt Relief cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      The Political Development of American Debt Relief
    </h3>
    <p class="mt-1 text-sm">
      Interview with Thurston &amp; Zackin (25 Jun 2024)
    </p>
    <a
      href="https://newbooksnetwork.com/the-political-development-of-american-debt-relief-2"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>
  
  <!-- End podcast chunk -->

  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/americas-new-racial-battle-lines" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="battle_lines.jpg"
        alt="America's New Racial Battle Lines cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      America's New Racial Battle Lines
    </h3>
    <p class="mt-1 text-sm">
      Interview with Smith &amp; King (21 Apr 2024)
    </p>
    <a
      href="https://newbooksnetwork.com/americas-new-racial-battle-lines"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>
  
  <!-- End podcast chunk -->

  
  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/when-bad-things-happen-to-privileged-people" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="bad_things.jpg"
        alt="When Bad Things Happen to Privileged People cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      When Bad Things Happen to Privileged People
    </h3>
    <p class="mt-1 text-sm">
      An interview with author Dara Z. Strolovitch (October 31, 2023)
    </p>
    <a
      href="https://newbooksnetwork.com/when-bad-things-happen-to-privileged-people"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- End podcast chunk -->


  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/the-advantage-of-disadvantage" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="advantage.jpg"
        alt="The Advantage of Disadvantage cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      The Advantage of Disadvantage
    </h3>
    <p class="mt-1 text-sm">
      An interview with author LaGina Gause (May 6, 2022)
    </p>
    <a
      href="https://newbooksnetwork.com/the-advantage-of-disadvantage"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- End podcast chunk -->



  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/movements-and-parties" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="movements.jpg"
        alt="Movements and Parties cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      Movements and Parties
    </h3>
    <p class="mt-1 text-sm">
      An interview with author Sidney G. Tarrow (April 25, 2022)
    </p>
    <a
      href="https://newbooksnetwork.com/movements-and-parties"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- End podcast chunk -->
  
  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/why-bad-policies-spread-and-good-ones-dont" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="spread.jpg"
        alt="Why Bad Policies Spread cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      Why Bad Policies Spread (And Good Ones Don't)
    </h3>
    <p class="mt-1 text-sm">
      An interview with author Craig Volden (February 21, 2022)
    </p>
    <a
      href="https://newbooksnetwork.com/why-bad-policies-spread-and-good-ones-dont"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- End podcast chunk -->

  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/the-judicial-tug-of-war" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="tug_of_war.jpg"
        alt="The Judicial Tug of War cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      The Judicial Tug of War
    </h3>
    <p class="mt-1 text-sm">
      An interview with authors Maya Sen and Adam Bonica (November 17, 2021)
    </p>
    <a
      href="https://newbooksnetwork.com/the-judicial-tug-of-war"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- End podcast chunk -->

  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/the-limits-of-party" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="limits_of_party.jpg"
        alt="The Limits of Party cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      The Limits of Party
    </h3>
    <p class="mt-1 text-sm">
      An interview with authors Frances E. Lee and James M. Curry (October 6, 2021)
    </p>
    <a
      href="https://newbooksnetwork.com/the-limits-of-party"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- End podcast chunk -->

  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/race-to-the-bottom" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="bottom.jpg"
        alt="Race to the Bottom cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      Race to the Bottom
    </h3>
    <p class="mt-1 text-sm">
      An interview with author LaFleur Stephens-Dougan (August 23, 2021)
    </p>
    <a
      href="https://newbooksnetwork.com/race-to-the-bottom"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- End podcast chunk -->

  <!-- Start podcast chunk -->
  <div class="podcast-card not-prose">
    <a href="https://newbooksnetwork.com/secular-surge" target="_blank" rel="noopener">
      <div class="cover-wrapper">
      <img
        src="surge.jpg"
        alt="Secular Surge cover"
        class="shadow-lg"
      >
      </div>
    </a>
    <h3 class="mt-4 text-base font-semibold leading-snug">
      Secular Surge
    </h3>
    <p class="mt-1 text-sm">
      An interview with authors David E. Campbell and Geoffrey C. Layman (August 18, 2021)
    </p>
    <a
      href="https://newbooksnetwork.com/secular-surge"
      target="_blank"
      rel="noopener"
      class="btn btn-primary mt-3"
    >
      Listen here
    </a>
  </div>

  <!-- End podcast chunk -->  
</div>
</div>
