import argparse
import colorsys

import matplotlib.pyplot as plt
import numpy as np
from skimage import color, io
from skimage.transform import rescale
from sklearn.cluster import KMeans


def palette(img, n=10, r=1, o=False):
    img = img[:, :, (0, 1, 2)]
    img = rescale(img, (r, r, 1), anti_aliasing=True)
    lab = color.rgb2lab(img).reshape(-1, 3)
    km = KMeans(n_clusters=n, random_state=0).fit(lab)
    cc = km.cluster_centers_.reshape(-1, 1, 3).transpose((1, 0, 2))

    if o:
        rgb_x = color.lab2rgb(cc)
        initial_colors = list(rgb_x[0])
        initial_colors.sort(key=lambda c: colorsys.rgb_to_hsv(*c))

        return np.asarray([initial_colors])

    return color.lab2rgb(cc)

def p2h(p):
    r, g, b = np.round(p).astype(int)
    return f"#{r:02X}{g:02X}{b:02X}"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("img")
    parser.add_argument("out")
    parser.add_argument("-n", default=10, type=int, help="The number of colors for the palette")
    parser.add_argument("-r", default=1, type=float, help="Rescale factor")
    parser.add_argument("-o", default=False, action='store_true')
    args = parser.parse_args()
    img = io.imread(args.img)
    p = palette(img, n=args.n, r=args.r, o=args.o)
    h = [p2h(rgb * 255) for rgb in p[0]]
    ax = plt.axes()
    ax.imshow(img)
    ax.set_axis_off()
    axin = ax.inset_axes([0.2, 0.2, 0.6, 0.2])
    axin.set_axis_off()
    axin.imshow(p, aspect="auto")
    plt.savefig(args.out, dpi=800, pad_inches=0, bbox_inches="tight")
    print("\n".join(h))


if __name__ == "__main__":
    main()
