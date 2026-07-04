---
title: "Projects"
url: "/projects/"
summary: "Things I've built"
showToc: false
---

I build in public — some of this is live and used, some is a sandbox I never came back to. It's all real, and it roughly traces how I went from writing my first Python script to shipping Solidity to mainnet.

---

## nouns-builder-passport

My main project. It's an onchain reputation system for builders in Nouns DAO, built on the [Ethereum Attestation Service](https://attest.org). The idea: participation in a DAO should be more legible than "how many tokens do you hold." So the passport tracks what people actually *do*.

It works through three attestation schemas. Propdates admins attest a builder's milestones (title, evidence, completion). Any Noun holder can then peer-verify a milestone — one verification per holder, enforced onchain. From those, the system auto-issues a **builder passport** the builder never signs themselves: total proposals, completed proposals, milestone counts, peer verifications, update cadence.

All of it reads straight from the live Propdates contract, so there's no indexer to trust or keep in sync. Written in Solidity, tested and deployed with Foundry, OpenZeppelin for the token bits, reentrancy guards around the EAS callbacks. Operations land somewhere around $0.015–$0.06 in gas.

→ [github.com/jgramajo4/nouns-builder-passport](https://github.com/jgramajo4/nouns-builder-passport) · [live](https://nouns-builder-passport.vercel.app)

---

## gavel

A terminal client for Nouns DAO governance. Built so an agent — not just a person — can propose, vote, and execute onchain without ever leaving the command line. It's me poking at what governance looks like when the participant is software.

→ [github.com/jgramajo4/gavel](https://github.com/jgramajo4/gavel)

---

## lilprops

Prop Dates for [Lil Nouns DAO](https://lilnouns.wtf) — a place for proposers to post updates on funded proposals so the DAO can actually see whether the work is happening. TypeScript, deployed and live.

→ [github.com/jgramajo4/lilprops](https://github.com/jgramajo4/lilprops) · [live](https://lilprops-bay.vercel.app)

---

## Nouns Milestone Payments

Smart contracts for paying DAO contributors against milestones instead of one big grant up front. Money releases as work gets done — more accountability, less trust required on either side. Solidity.

→ [github.com/jgramajo4/Nouns_Milestone_Payments](https://github.com/jgramajo4/Nouns_Milestone_Payments)

---

## POAP Vending Machine

A POAP dispenser that hands out drops via email lookup — a small bridge between people who don't live in a wallet yet and the onchain thing you want to give them.

→ [github.com/jgramajo4/POAP-Vending-Machine](https://github.com/jgramajo4/POAP-Vending-Machine)

---

## area51

A token-gated website for the AREA token community — an experiment in onchain access control and what a members-only space looks like when the membership lives on a contract.

→ [github.com/jgramajo4/area51](https://github.com/jgramajo4/area51)

---

## fvframes

A running collection of my favorite Farcaster frames and actions — the ones worth stealing ideas from. Less a product, more a notebook of what's working in the feed.

→ [github.com/jgramajo4/fvframes](https://github.com/jgramajo4/fvframes)

---

## ebird-obsidian-plugin

An Obsidian plugin that pulls eBird data into my notes. This is what happens when the birding hobby and the note-taking hobby collide. TypeScript.

→ [github.com/jgramajo4/ebird-obsidian-plugin](https://github.com/jgramajo4/ebird-obsidian-plugin)

---

## gramajowiki

My second brain before Obsidian — a single-file, self-contained [TiddlyWiki](https://tiddlywiki.com) I ran for years. Still have a soft spot for how self-contained it is.

→ [github.com/jgramajo4/gramajowiki](https://github.com/jgramajo4/gramajowiki)

---

## The early stuff (2021, learning Python)

Before any of the above, there was a stretch of teaching myself by scraping and charting things I already cared about — precious metals prices off APMEX, a Coingecko dashboard for the coins in my portfolio, an "is Ask HN or Show HN better" data dig, a few API callers. None of it's impressive. All of it was me figuring out that I could actually make the computer do what I wanted.

→ [Precious-Metals-Webscraper](https://github.com/jgramajo4/Precious-Metals-Webscraper) · [Coingecko-API](https://github.com/jgramajo4/Coingecko-API) · [Hacker_News_Posts](https://github.com/jgramajo4/Hacker_News_Posts)

---

*More coming. I build things, break them, and build better ones.*
