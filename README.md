# Creatable Conversion Tracking for Google Tag Manager

A Google Tag Manager tag template that records orders on your order confirmation page, so Creatable can credit the creators who drove them.

It reads the standard GA4 `purchase` event, so most stores need no code. It sends:

- the order ID and line items (SKU, price, quantity);
- the coupon codes used (optional);
- whether the buyer is a new customer (optional).

## Install

1. In Google Tag Manager, add **Creatable Conversion Tracking** from the Community Template Gallery, or import `template.tpl` under **Templates → Tag Templates → New → ⋮ → Import**.
2. Create a tag from the template and enter your Creatable account ID.
3. Choose the **Environment**: **Stage** for testing, **Production** to go live.
4. Trigger it on the `purchase` event.

Full setup, testing and troubleshooting steps: [Conversion Tracking Pixel](https://support.creatable.io/conversion-tracking-pixel).

## Support

Email support@creatable.com, or open an issue in this repository.
